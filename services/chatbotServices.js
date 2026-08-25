const db = require('../config/database');
const { MessageMedia } = require('whatsapp-web.js');
const fs = require('fs');
const path = require('path');


/*
========================================
HITUNG SEMESTER OTOMATIS
========================================

*/

function hitungSemester(angkatan) {

    const sekarang = new Date();

    const tahun = sekarang.getFullYear();
    const bulan = sekarang.getMonth() + 1;

    const tahunAngkatan = Number(angkatan);

    // Validasi angkatan
    if (
        !angkatan ||
        isNaN(tahunAngkatan)
    ) {
        return '-';
    }

    let semester;

    /*
    Januari
    Januari masih termasuk semester ganjil
    dari tahun akademik sebelumnya
    */
    if (bulan === 1) {

        semester =
            (tahun - tahunAngkatan) * 2 - 1;

    }

    /*
    Februari - Agustus
    Semester Genap
    */
    else if (
        bulan >= 2 &&
        bulan <= 8
    ) {

        semester =
            (tahun - tahunAngkatan) * 2;

    }

    /*
    September - Desember
    Semester Ganjil
    */
    else {

        semester =
            (tahun - tahunAngkatan) * 2 + 1;

    }

    /*
    Jangan menghasilkan semester 0
    atau nilai negatif.
    */
    if (semester < 1) {
        return 1;
    }

    return semester;
}


/*
========================================
SIMPAN LOG CHATBOT
========================================
*/

const simpanLog = (
    nomor,
    pesan,
    balasan
) => {

    db.query(
        `
        INSERT INTO chatbot_log
        (
            nomor_wa,
            pesan,
            balasan,
            waktu
        )
        VALUES
        (
            ?, ?, ?, NOW()
        )
        `,
        [
            nomor,
            pesan,
            balasan
        ],
        (err) => {

            if (err) {

                console.log(
                    'Gagal simpan log:',
                    err
                );

            }

        }
    );

};


/*
========================================
REPLY + LOG
========================================
*/

async function replyLog(
    message,
    balasan
) {

    await new Promise(
        resolve =>
            setTimeout(resolve, 2000)
    );

    await message.reply(
        balasan
    );

    simpanLog(
        message.from,
        message.body,
        balasan
    );

}


/*
========================================
HANDLE MESSAGE
========================================
*/

exports.handleMessage = async (
    client,
    message
) => {

    const text =
        message.body
            .toLowerCase()
            .trim();

    try {


        /*
        ==========================
        MENU
        ==========================
        */

        if (text === 'menu') {

            const balasan = `

🎓 CHATBOT AKADEMIK

📚 jadwal (matkul)
📚 jadwal kelas (kelas)
📚 jadwal dosen (nama dosen)
📅 kalender

👨‍🎓 npm (npm)
👨‍🏫 dosen (nama dosen)
📖 mk (matkul)

📢 pengumuman
📝 cekjudul (judul)

📚 skripsi (npm)
🏢 kp (npm)
🌍 kkn (npm)

📄 dokumen

🔔 daftar
❌ berhenti

`;

            return replyLog(
                message,
                balasan
            );

        }


        /*
        ==========================
        JADWAL PER KELAS
        ==========================
        */

        if (
            text.startsWith(
                'jadwal kelas '
            )
        ) {

            const kelas =
                text
                    .replace(
                        'jadwal kelas ',
                        ''
                    )
                    .trim();

            if (!kelas) {

                return replyLog(
                    message,
                    'Silakan masukkan nama kelas.'
                );

            }

            return tampilkanJadwalPerKelas(
                message,
                kelas
            );

        }


        /*
        ==========================
        JADWAL PER DOSEN
        ==========================
        */

        if (
            text.startsWith(
                'jadwal dosen '
            )
        ) {

            const namaDosen =
                text
                    .replace(
                        'jadwal dosen ',
                        ''
                    )
                    .trim();

            if (!namaDosen) {

                return replyLog(
                    message,
                    'Silakan masukkan nama dosen.'
                );

            }

            return tampilkanJadwalPerDosen(
                message,
                namaDosen
            );

        }


        /*
        ==========================
        JADWAL PER HARI
        ==========================
        */

        if (
            text.startsWith('jadwal ')
        ) {

            const hari =
                text
                    .replace(
                        'jadwal',
                        ''
                    )
                    .trim();

            if (!hari) {

                return replyLog(
                    message,
                    'Silakan masukkan hari.\n\nContoh:\njadwal senin'
                );

            }

            db.query(
                `
                SELECT
                    j.*,
                    mk.nama_mk,
                    d.nama AS dosen
                FROM jadwal j
                LEFT JOIN mata_kuliah mk
                    ON j.id_mk = mk.id_mk
                LEFT JOIN dosen d
                    ON j.id_dosen = d.id_dosen
                WHERE LOWER(j.hari) = ?
                ORDER BY j.jam_mulai
                `,
                [
                    hari.toLowerCase()
                ],
                (err, data) => {

                    if (err) {

                        console.log(
                            'Error jadwal:',
                            err
                        );

                        return replyLog(
                            message,
                            'Terjadi kesalahan sistem.'
                        );

                    }

                    if (
                        !data ||
                        data.length === 0
                    ) {

                        return replyLog(
                            message,
                            'Jadwal tidak ditemukan.'
                        );

                    }

                    let balasan =
                        '📚 *JADWAL KULIAH*\n\n';

                    data.forEach(
                        (j, index) => {

                            balasan +=
                                `${index + 1}. ${j.nama_mk}\n` +
                                `👨‍🏫 Dosen : ${j.dosen || '-'}\n` +
                                `🏫 Kelas : ${j.kelas || '-'}\n` +
                                `📅 Hari : ${j.hari || '-'}\n` +
                                `🕒 Jam : ${j.jam_mulai || '-'} - ${j.jam_selesai || '-'}\n` +
                                `📍 Ruangan : ${j.ruangan || '-'}\n\n`;

                        }
                    );

                    return replyLog(
                        message,
                        balasan
                    );

                }
            );

            return;

        }


        /*
        ==========================
        FUNCTION JADWAL DOSEN
        ==========================
        */

        async function tampilkanJadwalPerDosen(
            message,
            namaDosen
        ) {

            console.log(
                'Dosen dicari:',
                namaDosen
            );

            db.query(
                `
                SELECT
                    j.*,
                    mk.nama_mk,
                    d.nama AS dosen
                FROM jadwal j
                LEFT JOIN mata_kuliah mk
                    ON j.id_mk = mk.id_mk
                LEFT JOIN dosen d
                    ON j.id_dosen = d.id_dosen
                WHERE LOWER(d.nama) LIKE ?
                ORDER BY j.hari, j.jam_mulai
                `,
                [
                    `%${namaDosen.toLowerCase()}%`
                ],
                (err, data) => {

                    if (err) {

                        console.log(
                            'Error jadwal dosen:',
                            err
                        );

                        return replyLog(
                            message,
                            'Terjadi kesalahan sistem.'
                        );

                    }

                    if (
                        !data ||
                        data.length === 0
                    ) {

                        return replyLog(
                            message,
                            `Jadwal dosen ${namaDosen} tidak ditemukan.`
                        );

                    }

                    let balasan =
                        `👨‍🏫 *JADWAL DOSEN ${namaDosen.toUpperCase()}*\n\n`;

                    data.forEach(
                        item => {

                            balasan +=
                                `📖 ${item.nama_mk}\n` +
                                `🏫 Kelas : ${item.kelas || '-'}\n` +
                                `📅 Hari : ${item.hari || '-'}\n` +
                                `🕒 Jam : ${item.jam_mulai || '-'} - ${item.jam_selesai || '-'}\n` +
                                `📍 Ruangan : ${item.ruangan || '-'}\n\n`;

                        }
                    );

                    return replyLog(
                        message,
                        balasan
                    );

                }
            );

        }


        /*
        ==========================
        FUNCTION JADWAL KELAS
        ==========================
        */

        async function tampilkanJadwalPerKelas(
            message,
            kelas
        ) {

            console.log(
                'Kelas dicari:',
                kelas
            );

            db.query(
                `
                SELECT
                    j.*,
                    mk.nama_mk,
                    d.nama AS dosen
                FROM jadwal j
                LEFT JOIN mata_kuliah mk
                    ON j.id_mk = mk.id_mk
                LEFT JOIN dosen d
                    ON j.id_dosen = d.id_dosen
                WHERE j.kelas LIKE ?
                ORDER BY j.hari, j.jam_mulai
                `,
                [
                    `%${kelas}%`
                ],
                (err, data) => {

                    if (err) {

                        console.log(
                            'Error jadwal kelas:',
                            err
                        );

                        return replyLog(
                            message,
                            'Terjadi kesalahan sistem.'
                        );

                    }

                    if (
                        !data ||
                        data.length === 0
                    ) {

                        return replyLog(
                            message,
                            `Jadwal kelas ${kelas} tidak ditemukan.`
                        );

                    }

                    let balasan =
                        `📚 *JADWAL KELAS ${kelas.toUpperCase()}*\n\n`;

                    data.forEach(
                        item => {

                            balasan +=
                                `📖 ${item.nama_mk}\n` +
                                `👨‍🏫 ${item.dosen || '-'}\n` +
                                `📅 ${item.hari || '-'}\n` +
                                `🕒 ${item.jam_mulai || '-'} - ${item.jam_selesai || '-'}\n` +
                                `🏫 ${item.ruangan || '-'}\n\n`;

                        }
                    );

                    return replyLog(
                        message,
                        balasan
                    );

                }
            );

        }


        /*
        ==========================
        PENGUMUMAN
        ==========================
        */

        if (
            text === 'pengumuman'
        ) {

            db.query(
                `
                SELECT *
                FROM pengumuman
                ORDER BY tanggal DESC
                `,
                (err, data) => {

                    if (err) {

                        console.log(
                            'Error pengumuman:',
                            err
                        );

                        return replyLog(
                            message,
                            'Terjadi kesalahan sistem.'
                        );

                    }

                    if (
                        !data ||
                        data.length === 0
                    ) {

                        return replyLog(
                            message,
                            'Belum ada pengumuman.'
                        );

                    }

                    let balasan =
                        '📢 *PENGUMUMAN*\n\n';

                    data.forEach(
                        (p, index) => {

                            const tanggal =
                                new Date(
                                    p.tanggal
                                )
                                .toLocaleDateString(
                                    'id-ID'
                                );

                            balasan +=
                                `${index + 1}. ${p.judul}\n` +
                                `${p.isi}\n` +
                                `Tanggal : ${tanggal}\n\n`;

                        }
                    );

                    return replyLog(
                        message,
                        balasan
                    );

                }
            );

            return;

        }


        /*
        ==========================
        MAHASISWA
        ==========================
        */

        if (
            text.startsWith('npm')
        ) {

            const npm =
                text
                    .replace('npm', '')
                    .trim();

            if (!npm) {

                return replyLog(
                    message,
                    'Silakan masukkan NPM.\n\nContoh:\nnpm 222370025'
                );

            }

            db.query(
                `
                SELECT *
                FROM mahasiswa
                WHERE npm = ?
                `,
                [
                    npm
                ],
                (err, data) => {

                    if (err) {

                        console.log(
                            'Error data mahasiswa:',
                            err
                        );

                        return replyLog(
                            message,
                            'Terjadi kesalahan sistem.'
                        );

                    }

                    if (
                        !data ||
                        data.length === 0
                    ) {

                        return replyLog(
                            message,
                            'Mahasiswa Tidak Ditemukan.'
                        );

                    }

                    const m = data[0];

                    /*
                    ==================================
                    SEMESTER OTOMATIS
                    ==================================
                    */

                    const semester =
                        hitungSemester(
                            m.angkatan
                        );

                    const balasan =

`👨‍🎓 *DATA MAHASISWA*

Nama : ${m.nama || '-'}
NPM : ${m.npm || '-'}
Jenis Kelamin : ${m.jenis_kelamin || '-'}
Angkatan : ${m.angkatan || '-'}
Semester : ${semester}
No HP : ${m.no_hp || '-'}`;

                    return replyLog(
                        message,
                        balasan
                    );

                }
            );

            return;

        }


        /*
        ==========================
        DOSEN
        ==========================
        */

        if (
            text.startsWith('dosen ')
        ) {

            const nama =
                text
                    .replace(
                        'dosen',
                        ''
                    )
                    .trim();

            if (!nama) {

                return replyLog(
                    message,
                    'Silakan masukkan nama dosen.'
                );

            }

            db.query(
                `
                SELECT *
                FROM dosen
                WHERE nama LIKE ?
                `,
                [
                    `%${nama}%`
                ],
                (err, data) => {

                    if (err) {

                        console.log(
                            'Error data dosen:',
                            err
                        );

                        return replyLog(
                            message,
                            'Terjadi kesalahan sistem.'
                        );

                    }

                    if (
                        !data ||
                        data.length === 0
                    ) {

                        return replyLog(
                            message,
                            'Dosen tidak ditemukan.'
                        );

                    }

                    const d = data[0];

                    return replyLog(
                        message,

`👨‍🏫 *DOSEN*

Nama :
${d.nama || '-'}

Kode :
${d.kode || '-'}`

                    );

                }
            );

            return;

        }


        /*
        ==========================
        DOKUMEN
        ==========================
        */

        if (
            text === 'dokumen'
        ) {

            db.query(
                `
                SELECT *
                FROM dokumen
                `,
                (err, data) => {

                    if (err) {

                        console.log(
                            'Error dokumen:',
                            err
                        );

                        return replyLog(
                            message,
                            'Terjadi kesalahan sistem.'
                        );

                    }

                    if (
                        !data ||
                        data.length === 0
                    ) {

                        return replyLog(
                            message,
                            'Belum Ada Dokumen.'
                        );

                    }

                    let pesan =
                        '📂 *DOKUMEN AKADEMIK*\n\n';

                    data.forEach(
                        (d, index) => {

                            pesan +=
                                `${index + 1}. ${d.nama}\n`;

                        }
                    );

                    pesan +=
                        '\nKetik: dokumen 1';

                    return replyLog(
                        message,
                        pesan
                    );

                }
            );

            return;

        }


        /*
        ==========================
        DOWNLOAD DOKUMEN
        ==========================
        */

        if (
            text.startsWith('dokumen ')
        ) {

            const nomor =
                parseInt(
                    text
                        .replace(
                            'dokumen',
                            ''
                        )
                        .trim()
                );

            if (
                isNaN(nomor) ||
                nomor < 1
            ) {

                return replyLog(
                    message,
                    'Nomor dokumen tidak valid.\n\nContoh:\ndokumen 1'
                );

            }

            db.query(
                `
                SELECT *
                FROM dokumen
                `,
                async (err, data) => {

                    if (err) {

                        console.log(
                            'Error mengambil dokumen:',
                            err
                        );

                        return replyLog(
                            message,
                            'Terjadi kesalahan sistem.'
                        );

                    }

                    if (
                        !data ||
                        data.length === 0
                    ) {

                        return replyLog(
                            message,
                            'Belum ada dokumen.'
                        );

                    }

                    /*
                    ==================================
                    AMBIL DOKUMEN BERDASARKAN NOMOR
                    ==================================
                    */

                    const doc =
                        data[nomor - 1];

                    if (!doc) {

                        return replyLog(
                            message,
                            `Dokumen nomor ${nomor} tidak ditemukan.`
                        );

                    }

                    if (!doc.file) {

                        return replyLog(
                            message,
                            'File dokumen belum tersedia.'
                        );

                    }

                    const filePath =
                        path.join(
                            __dirname,
                            '../public/uploads',
                            doc.file
                        );

                    if (
                        !fs.existsSync(
                            filePath
                        )
                    ) {

                        return replyLog(
                            message,
                            'File dokumen tidak ditemukan di server.'
                        );

                    }

                    try {

                        const dokumenMedia =
                            MessageMedia.fromFilePath(
                                filePath
                            );

                        await client.sendMessage(
                            message.from,
                            dokumenMedia,
                            {
                                caption:
                                    doc.nama
                            }
                        );

                        simpanLog(
                            message.from,
                            message.body,
                            `Download dokumen: ${doc.nama}`
                        );

                    } catch (error) {

                        console.log(
                            'Gagal mengirim dokumen:',
                            error
                        );

                        return replyLog(
                            message,
                            'Gagal mengirim dokumen.'
                        );

                    }

                }
            );

            return;

        }


        /*
        ==========================
        FAQ
        ==========================
        */

        if (
            text.startsWith('faq ')
        ) {

            const pertanyaan =
                text
                    .replace(
                        'faq',
                        ''
                    )
                    .trim();

            if (!pertanyaan) {

                return replyLog(
                    message,
                    'Silakan masukkan pertanyaan.'
                );

            }

            db.query(
                `
                SELECT *
                FROM faq
                WHERE pertanyaan LIKE ?
                LIMIT 1
                `,
                [
                    `%${pertanyaan}%`
                ],
                (err, data) => {

                    if (err) {

                        console.log(
                            'Error FAQ:',
                            err
                        );

                        return replyLog(
                            message,
                            'Terjadi kesalahan.'
                        );

                    }

                    if (
                        !data ||
                        data.length === 0
                    ) {

                        return replyLog(
                            message,
                            'FAQ tidak ditemukan.'
                        );

                    }

                    const balasan =

`❓ ${data[0].pertanyaan}

✅ ${data[0].jawaban}`;

                    return replyLog(
                        message,
                        balasan
                    );

                }
            );

            return;

        }


        /*
        ==========================
        MATKUL
        ==========================
        */

        if (
            text.startsWith('mk ')
        ) {

            const keyword =
                text
                    .replace(
                        'mk',
                        ''
                    )
                    .trim();

            if (!keyword) {

                return replyLog(
                    message,
                    'Silakan masukkan nama mata kuliah.'
                );

            }

            db.query(
                `
                SELECT *
                FROM mata_kuliah
                WHERE nama_mk LIKE ?
                `,
                [
                    `%${keyword}%`
                ],
                (err, data) => {

                    if (err) {

                        console.log(
                            'Error mata kuliah:',
                            err
                        );

                        return replyLog(
                            message,
                            'Terjadi kesalahan sistem.'
                        );

                    }

                    if (
                        !data ||
                        data.length === 0
                    ) {

                        return replyLog(
                            message,
                            'Mata kuliah tidak ditemukan.'
                        );

                    }

                    const mk = data[0];

                    return replyLog(
                        message,

`📖 *MATA KULIAH*

Nama :
${mk.nama_mk || '-'}

SKS :
${mk.sks || '-'}

Semester :
${mk.semester || '-'}`

                    );

                }
            );

            return;

        }


        /*
        ==========================
        SKRIPSI
        ==========================
        */

        if (
            text.startsWith('skripsi ')
        ) {

            const npm =
                text
                    .replace(
                        'skripsi',
                        ''
                    )
                    .trim();

            if (!npm) {

                return replyLog(
                    message,
                    'Silakan masukkan NPM.'
                );

            }

            db.query(
                `
                SELECT
                    s.*,
                    m.nama AS mahasiswa,
                    d.nama AS pembimbing
                FROM skripsi s
                LEFT JOIN mahasiswa m
                    ON s.id_mahasiswa = m.id_mahasiswa
                LEFT JOIN dosen d
                    ON s.pembimbing = d.id_dosen
                WHERE m.npm = ?
                `,
                [
                    npm
                ],
                (err, data) => {

                    if (err) {

                        console.log(
                            'Error skripsi:',
                            err
                        );

                        return replyLog(
                            message,
                            'Terjadi kesalahan.'
                        );

                    }

                    if (
                        !data ||
                        data.length === 0
                    ) {

                        return replyLog(
                            message,
                            'Data skripsi tidak ditemukan.'
                        );

                    }

                    const s = data[0];

                    let tanggal = '-';

                    if (s.tanggal_sidang) {

                        tanggal =
                            new Date(
                                s.tanggal_sidang
                            )
                            .toLocaleDateString(
                                'id-ID'
                            );

                    }

                    const balasan =

`📚 *DATA SKRIPSI*

Nama :
${s.mahasiswa || '-'}

Judul :
${s.judul || '-'}

Pembimbing :
${s.pembimbing || '-'}

Status :
${s.status || '-'}

Tanggal Sidang :
${tanggal}`;

                    return replyLog(
                        message,
                        balasan
                    );

                }
            );

            return;

        }

        /*
        ==========================
        KP
        ==========================
        */

        if (
            text.startsWith('kp ')
        ) {

            const npm =
                text
                    .replace(
                        'kp',
                        ''
                    )
                    .trim();

            if (!npm) {

                return replyLog(
                    message,
                    'Silakan masukkan NPM.'
                );

            }

            db.query(
                `
                SELECT
                    k.*,
                    m.nama,
                    d.nama AS dosen
                FROM kp k
                LEFT JOIN mahasiswa m
                    ON k.id_mahasiswa = m.id_mahasiswa
                LEFT JOIN dosen d
                    ON k.dosen_pembimbing = d.id_dosen
                WHERE m.npm = ?
                `,
                [
                    npm
                ],
                (err, data) => {

                    if (err) {

                        console.log(
                            'Error KP:',
                            err
                        );

                        return replyLog(
                            message,
                            'Terjadi kesalahan sistem.'
                        );

                    }

                    if (
                        !data ||
                        data.length === 0
                    ) {

                        return replyLog(
                            message,
                            'Data kerja praktek tidak ditemukan.'
                        );

                    }

                    const k = data[0];

                    let mulai = '-';
                    let selesai = '-';

                    if (k.mulai) {

                        mulai =
                            new Date(
                                k.mulai
                            )
                            .toLocaleDateString(
                                'id-ID'
                            );

                    }

                    if (k.selesai) {

                        selesai =
                            new Date(
                                k.selesai
                            )
                            .toLocaleDateString(
                                'id-ID'
                            );

                    }

                    const balasan =

`🏢 *KERJA PRAKTEK*

Nama :
${k.nama || '-'}

Perusahaan :
${k.perusahaan || '-'}

Pembimbing :
${k.dosen || '-'}

Mulai :
${mulai}

Selesai :
${selesai}`;

                    return replyLog(
                        message,
                        balasan
                    );

                }
            );

            return;

        }

        /*
        ==========================
        KKN
        ==========================
        */

        if (
            text.startsWith('kkn ')
        ) {

            const npm =
                text
                    .replace(
                        'kkn',
                        ''
                    )
                    .trim();

            if (!npm) {

                return replyLog(
                    message,
                    'Silakan masukkan NPM.'
                );

            }

            db.query(
                `
                SELECT
                    k.*,
                    m.nama
                FROM kkn k
                LEFT JOIN mahasiswa m
                    ON k.id_mahasiswa = m.id_mahasiswa
                WHERE m.npm = ?
                `,
                [
                    npm
                ],
                (err, data) => {

                    if (err) {

                        console.log(
                            'Error KKN:',
                            err
                        );

                        return replyLog(
                            message,
                            'Terjadi kesalahan sistem.'
                        );

                    }

                    if (
                        !data ||
                        data.length === 0
                    ) {

                        return replyLog(
                            message,
                            'Data KKN tidak ditemukan.'
                        );

                    }

                    const k = data[0];

                    const balasan =

`🌍 *KKN*

Nama :
${k.nama || '-'}

Kelompok :
${k.kelompok || '-'}

Lokasi :
${k.lokasi || '-'}

Status :
${k.status || '-'}`;

                    return replyLog(
                        message,
                        balasan
                    );

                }
            );

            return;

        }


        /*
        ==========================
        DAFTAR
        ==========================
        */

        if (
            text === 'daftar'
        ) {

            db.query(
                `
                SELECT *
                FROM pelanggan_bot
                WHERE no_hp = ?
                `,
                [
                    message.from
                ],
                (err, data) => {

                    if (err) {

                        console.log(
                            'Error cek pelanggan:',
                            err
                        );

                        return replyLog(
                            message,
                            'Terjadi kesalahan sistem.'
                        );

                    }

                    if (
                        data &&
                        data.length > 0
                    ) {

                        return replyLog(
                            message,
                            'Anda sudah terdaftar.'
                        );

                    }

                    db.query(
                        `
                        INSERT INTO pelanggan_bot
                        (
                            no_hp
                        )
                        VALUES
                        (?)
                        `,
                        [
                            message.from
                        ],
                        (insertErr) => {

                            if (insertErr) {

                                console.log(
                                    'Error daftar:',
                                    insertErr
                                );

                                return replyLog(
                                    message,
                                    'Gagal melakukan pendaftaran.'
                                );

                            }

                            return replyLog(
                                message,
                                'Berhasil terdaftar notifikasi akademik.'
                            );

                        }
                    );

                }
            );

            return;

        }


        /*
        ==========================
        BERHENTI
        ==========================
        */

        if (
            text === 'berhenti'
        ) {

            db.query(
                `
                DELETE FROM pelanggan_bot
                WHERE no_hp = ?
                `,
                [
                    message.from
                ],
                (err) => {

                    if (err) {

                        console.log(
                            'Error berhenti:',
                            err
                        );

                        return replyLog(
                            message,
                            'Terjadi kesalahan sistem.'
                        );

                    }

                    return replyLog(
                        message,
                        'Berhasil berhenti berlangganan.'
                    );

                }
            );

            return;

        }


        /*
        ==========================
        CEK JUDUL
        ==========================
        */

        if (
            text.startsWith(
                'cekjudul '
            )
        ) {

            const keyword =
                text
                    .replace(
                        'cekjudul',
                        ''
                    )
                    .trim();

            if (!keyword) {

                return replyLog(
                    message,
                    'Silakan masukkan judul yang ingin dicek.'
                );

            }

            db.query(
                `
                SELECT *
                FROM judul_skripsi
                WHERE judul LIKE ?
                `,
                [
                    `%${keyword}%`
                ],
                (err, data) => {

                    if (err) {

                        console.log(
                            'Error cek judul:',
                            err
                        );

                        return replyLog(
                            message,
                            'Terjadi kesalahan sistem.'
                        );

                    }

                    if (
                        !data ||
                        data.length === 0
                    ) {

                        return replyLog(
                            message,
                            'Judul belum pernah digunakan.'
                        );

                    }

                    let balasan =
                        '⚠ *JUDUL SERUPA DITEMUKAN*\n\n';

                    data.forEach(
                        (j, index) => {

                            balasan +=
                                `${index + 1}. ${j.judul}\n\n`;

                        }
                    );

                    return replyLog(
                        message,
                        balasan
                    );

                }
            );

            return;

        }


        /*
        ==========================
        KALENDER
        ==========================
        */

        if (
            text === 'kalender'
        ) {

            db.query(
                `
                SELECT *
                FROM kalender_akademik
                ORDER BY tanggal_mulai
                `,
                (err, data) => {

                    if (err) {

                        console.log(
                            'Error kalender:',
                            err
                        );

                        return replyLog(
                            message,
                            'Terjadi kesalahan sistem.'
                        );

                    }

                    if (
                        !data ||
                        data.length === 0
                    ) {

                        return replyLog(
                            message,
                            'Belum ada kalender akademik.'
                        );

                    }

                    let balasan =
                        '📅 *KALENDER AKADEMIK*\n\n';

                    data.forEach(
                        (k, index) => {

                            const mulai =
                                new Date(
                                    k.tanggal_mulai
                                )
                                .toLocaleDateString(
                                    'id-ID'
                                );

                            const selesai =
                                new Date(
                                    k.tanggal_selesai
                                )
                                .toLocaleDateString(
                                    'id-ID'
                                );

                            balasan +=
                                `${index + 1}. ${k.kegiatan}\n` +
                                `${mulai} s/d ${selesai}\n\n`;

                        }
                    );

                    return replyLog(
                        message,
                        balasan
                    );

                }
            );

            return;

        }


        /*
        ==========================
        DEFAULT
        ==========================
        */

        console.log(
            'Pesan tidak dikenali:',
            message.from,
            message.body
        );

        return replyLog(
            message,
            'Perintah tidak dikenali.\n\nKetik *menu* untuk melihat daftar layanan.'
        );


    } catch (error) {

        console.log(
            'Error chatbot:',
            error
        );

        return replyLog(
            message,
            'Terjadi kesalahan sistem.'
        );

    }

};
