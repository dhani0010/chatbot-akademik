const qrcode = require('qrcode-terminal');
const { Client, LocalAuth } = require('whatsapp-web.js');

const chatbotService = require('../services/chatbotServices');
const db = require('../config/database');

const path = require('path');

const client = new Client({
    authStrategy: new LocalAuth({
        clientId: 'chatbot-akademik',
        dataPath: '/app/.wwebjs_auth'
    }),

    puppeteer: {
        executablePath: process.env.PUPPETEER_EXECUTABLE_PATH || '/usr/bin/chromium',
        headless: true,

        protocolTimeout: 120000,

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
let initializingWhatsApp = false;

async function initializeWhatsApp() {

    if (initializingWhatsApp || whatsappReady) {
        return;
    }

    initializingWhatsApp = true;

    try {

        console.log('================================');
        console.log('INITIALIZING WHATSAPP...');
        console.log('================================');

        await client.initialize();

    } catch (error) {

        console.error(
            'GAGAL INITIALIZE WHATSAPP:',
            error.message
        );

        whatsappReady = false;

    } finally {

        initializingWhatsApp = false;

    }
}

setInterval(async () => {

    if (whatsappReady) {
        return;
    }

    console.log(
        'WHATSAPP BELUM READY - MENCOBA INITIALIZE ULANG...'
    );

    await initializeWhatsApp();

}, 60000);

console.log('MEMULAI WHATSAPP...');

client.initialize()
    .then(() => {
        console.log('WhatsApp initialize selesai');
    })
    .catch((error) => {
        console.error(
            'WHATSAPP INITIALIZE ERROR:',
            error
        );
    });

module.exports = {
    client,
    kirimPengumuman
};
