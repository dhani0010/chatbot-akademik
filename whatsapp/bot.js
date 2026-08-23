const qrcode = require('qrcode-terminal');
const { Client, LocalAuth } = require('whatsapp-web.js');

const chatbotService = require('../services/chatbotServices');
const db = require('../config/database');

const path = require('path');

const client = new Client({
    authStrategy: new LocalAuth({
        clientId: 'chatbot-akademik',
        dataPath: path.join(__dirname, '../.wwebjs_auth')
    }),

    puppeteer: {
        headless: true,
        args: [
            '--no-sandbox',
            '--disable-setuid-sandbox',
            '--disable-dev-shm-usage'
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

client.on('authenticated', () => {
    console.log(
        'WhatsApp authenticated'
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

client.on('authenticated', async () => {
    console.log('WhatsApp authenticated');

    try {
        const state = await client.getState();

        console.log(
            'WhatsApp State:',
            state
        );

    } catch (error) {

        console.error(
            'Gagal mendapatkan WhatsApp state:',
            error
        );

    }
});

client.on('message', async (message) => {

    console.log('================================');
    console.log('PESAN MASUK:', message.body);
    console.log('DARI:', message.from);
    console.log('================================');

    if (message.fromMe) {
        return;
    }

    if (!message.body) {
        return;
    }

    await chatbotService.handleMessage(
        client,
        message
    );

});

setTimeout(async () => {

    try {

        const state =
            await client.getState();

        console.log(
            'CHECK 15 DETIK - STATE:',
            state
        );

        console.log(
            'CHECK 15 DETIK - INFO:',
            client.info
        );

    } catch (error) {

        console.error(
            'CHECK 15 DETIK ERROR:',
            error
        );

    }

}, 15000);

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