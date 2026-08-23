const express = require('express');
const router = express.Router();

const dashboardController = require('../controllers/dashboardController');

const mahasiswaController = require('../controllers/mahasiswaController');
const dosenController = require('../controllers/dosenController');
const mataKuliahController = require('../controllers/mataKuliahController');
const jadwalController = require('../controllers/jadwalController');
const skripsiController = require('../controllers/skripsiController');
const judulController = require('../controllers/judulController');
const kpController = require('../controllers/kpController');
const kknController = require('../controllers/kknController');
const semproController = require('../controllers/semproController');
const sidangController = require('../controllers/sidangController');
const kalenderController = require('../controllers/kalenderController');
const pengumumanController = require('../controllers/pengumumanController');
const faqController = require('../controllers/faqController');
const notifikasiController = require('../controllers/notifikasiController');
const chatbotLogController = require('../controllers/chatbotLogController');
const dokumenController = require('../controllers/dokumenController');

router.get('/dashboard', dashboardController.index);

/* MAHASISWA */
router.get('/mahasiswa', mahasiswaController.index);
router.get('/mahasiswa/create', mahasiswaController.create);
router.post('/mahasiswa/store', mahasiswaController.store);
router.get('/mahasiswa/edit/:id', mahasiswaController.edit);
router.post('/mahasiswa/update/:id', mahasiswaController.update);
router.get('/mahasiswa/delete/:id', mahasiswaController.destroy);

/* DOSEN */
router.get('/dosen', dosenController.index);
router.get('/dosen/create', dosenController.create);
router.post('/dosen/store', dosenController.store);
router.get('/dosen/edit/:id', dosenController.edit);
router.post('/dosen/update/:id', dosenController.update);
router.get('/dosen/delete/:id', dosenController.destroy);

/* MATA KULIAH */
router.get('/matakuliah', mataKuliahController.index);
router.get('/matakuliah/create', mataKuliahController.create);
router.post('/matakuliah/store', mataKuliahController.store);
router.get('/matakuliah/edit/:id', mataKuliahController.edit);
router.post('/matakuliah/update/:id', mataKuliahController.update);
router.get('/matakuliah/delete/:id', mataKuliahController.destroy);

/* JADWAL */
router.get('/jadwal', jadwalController.index);
router.get('/jadwal/create', jadwalController.create);
router.post('/jadwal/store', jadwalController.store);
router.get('/jadwal/edit/:id', jadwalController.edit);
router.post('/jadwal/update/:id', jadwalController.update);
router.get('/jadwal/delete/:id', jadwalController.destroy);

/* SKRIPSI */
router.get('/skripsi', skripsiController.index);
router.get('/skripsi/create', skripsiController.create);
router.post('/skripsi/store', skripsiController.store);
router.get('/skripsi/edit/:id', skripsiController.edit);
router.post('/skripsi/update/:id', skripsiController.update);
router.get('/skripsi/delete/:id', skripsiController.destroy);

/* JUDUL SKRIPSI */
router.get('/judulskripsi', judulController.index);
router.get('/judulskripsi/create', judulController.create);
router.post('/judulskripsi/store', judulController.store);
router.get('/judulskripsi/edit/:id', judulController.edit);
router.post('/judulskripsi/update/:id', judulController.update);
router.get('/judulskripsi/delete/:id', judulController.destroy);

/* KP */
router.get('/kp', kpController.index);
router.get('/kp/create', kpController.create);
router.post('/kp/store', kpController.store);
router.get('/kp/edit/:id', kpController.edit);
router.post('/kp/update/:id', kpController.update);
router.get('/kp/delete/:id', kpController.destroy);

/* KKN */
router.get('/kkn', kknController.index);
router.get('/kkn/create', kknController.create);
router.post('/kkn/store', kknController.store);
router.get('/kkn/edit/:id', kknController.edit);
router.post('/kkn/update/:id', kknController.update);
router.get('/kkn/delete/:id', kknController.destroy);

/* SEMPRO */
router.get('/sempro', semproController.index);
router.get('/sempro/create', semproController.create);
router.post('/sempro/store', semproController.store);

/* SIDANG */
router.get('/sidang', sidangController.index);
router.get('/sidang/create', sidangController.create);
router.post('/sidang/store', sidangController.store);

/* KALENDER */
router.get('/kalender', kalenderController.index);
router.get('/kalender/create', kalenderController.create);
router.post('/kalender/store', kalenderController.store);

/* PENGUMUMAN */
router.get('/pengumuman', pengumumanController.index);
router.get('/pengumuman/create', pengumumanController.create);
router.post('/pengumuman/store', pengumumanController.store);

/* FAQ */
router.get('/faq', faqController.index);
router.get('/faq/create', faqController.create);
router.post('/faq/store', faqController.store);

/* NOTIFIKASI */
router.get('/notifikasi', notifikasiController.index);

/* LOG CHATBOT */
router.get('/logchatbot', chatbotLogController.index);

/* DOKUMEN */
router.get('/dokumen', dokumenController.index);
router.get('/dokumen/create', dokumenController.create);
router.post('/dokumen/store', dokumenController.store);

module.exports = router;