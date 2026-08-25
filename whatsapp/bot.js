const qrcode = require('qrcode-terminal');
const { Client, LocalAuth } = require('whatsapp-web.js');

const chatbotService = require('../services/chatbotServices');
const db = require('../config/database');

const path = require('path');

const client = new Client({
    authStrategy: new LocalAuth({
        dataPath: './.wwebjs_auth'
    }),
    puppeteer: {
        executablePath: process.env.PUPPETEER_EXECUTABLE_PATH || '/usr/bin/chromium',
        headless: true,
        args: [
            '--no-sandbox',
            '--disable-setuid-sandbox',
            '--disable-dev-shm-usage',
            '--disable-gpu',
            '--no-first-run',
            '--no-zygote'
        ]
    }
});

async function kirimPengumuman(judul, isi, tanggal, jam) {

    if (!client.info) {
        console.log('WhatsApp belum siap');
        return;
    }

    const pesan = `
📢 *${judul}*

${isi}

📅 ${tanggal}
🕒 ${jam}
`;

    db.query(
        'SELECT no_hp FROM pelanggan_bot',
        async (err, rows) => {

            if (err) {
                console.log(err);
                return;
            }

            for (const item of rows) {

                try {

                    console.log('Mengirim ke:', item.no_hp);

                    await client.sendMessage(
                        item.no_hp,
                        pesan
                    );

                    console.log(
                        'Berhasil:',
                        item.no_hp
                    );

                } catch (error) {

                    console.log(
                        'Gagal:',
                        item.no_hp
                    );

                    console.log(error);
                }
            }
        }
    );
}

/* =========================
   EVENT WHATSAPP
========================= */

client.on('qr', (qr) => {
    console.log('QR CODE TERSEDIA - Silakan scan WhatsApp');

    qrcode.generate(qr, {
        small: true
    });
});

client.on('loading_screen', (percent, msg) => {
    console.log(
        `WhatsApp loading: ${percent}% - ${msg}`
    );
});

client.on('change_state', (state) => {
    console.log(
        'WhatsApp state:',
        state
    );
});

client.on('ready', async () => {

    console.log('================================');
    console.log('WHATSAPP READY');
    console.log('================================');

    try {

        const state =
            await client.getState();

        console.log(
            'State:',
            state
        );

        console.log(
            'Nomor:',
            client.info?.wid?.user
        );

    } catch (error) {

        console.error(
            'Error saat cek state:',
            error
        );

    }

});

client.on('auth_failure', (msg) => {
    console.error(
        'WHATSAPP AUTH FAILURE:',
        msg
    );
});

client.on('disconnected', (reason) => {
    console.error(
        'WHATSAPP DISCONNECTED:',
        reason
    );
});

client.on('authenticated', () => {
    console.log('WhatsApp authenticated');
});

client.on('ready', () => {
    console.log('================================');
    console.log('WHATSAPP READY');
    console.log('NOMOR:', client.info?.wid?.user);
    console.log('================================');
});

client.on('change_state', (state) => {
    console.log('WHATSAPP CHANGE STATE:', state);
});

client.on('disconnected', (reason) => {
    console.error('WHATSAPP DISCONNECTED:', reason);
});

client.on('auth_failure', (msg) => {
    console.error('WHATSAPP AUTH FAILURE:', msg);
});

client.on('message', async (message) => {

    console.log('PESAN MASUK:', message.body);

    try {

        await chatbotService.handleMessage(
            client,
            message
        );

    } catch (error) {

        console.error(
            'ERROR MESSAGE HANDLER:',
            error
        );

    }

});

let whatsappReady = false;

client.on('ready', () => {
    whatsappReady = true;

    console.log('================================');
    console.log('WHATSAPP READY');
    console.log('Nomor:', client.info?.wid?.user);
    console.log('================================');
});

client.on('disconnected', (reason) => {
    whatsappReady = false;

    console.error('WHATSAPP DISCONNECTED:', reason);
});

setInterval(async () => {

    if (!whatsappReady || !client.info) {
        console.log('CHECK WHATSAPP: BELUM READY');
        return;
    }

    try {

        const state = await client.getState();

        console.log(
            'CHECK WHATSAPP - STATE:',
            state
        );

    } catch (error) {

        console.error(
            'CHECK WHATSAPP ERROR:',
            error.message
        );

    }

}, 30000);

client.initialize()
    .then(() => {
        console.log(
            'WhatsApp client berhasil diinisialisasi'
        );
    })
    .catch((error) => {
        console.error(
            'GAGAL INITIALIZE WHATSAPP:'
        );

        console.error(error);
    });

module.exports = {
    client,
    kirimPengumuman
};
