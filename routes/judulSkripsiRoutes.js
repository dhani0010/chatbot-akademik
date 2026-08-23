const express = require('express');
const router = express.Router();

const judulSkripsiController =
require('../controllers/judulSkripsiController');

const auth =
require('../middleware/auth');

router.get(
    '/',
    auth,
    judulSkripsiController.index
);

router.get(
    '/tambah',
    auth,
    judulSkripsiController.tambahForm
);

router.post(
    '/tambah',
    auth,
    judulSkripsiController.insert
);

router.get(
    '/edit/:id',
    auth,
    judulSkripsiController.editForm
);

router.post(
    '/edit/:id',
    auth,
    judulSkripsiController.update
);

router.get(
    '/hapus/:id',
    auth,
    judulSkripsiController.delete
);

router.post(
    '/cek-judul',
    auth,
    judulSkripsiController.cekJudul
);

module.exports = router;