const express = require('express');
const router = express.Router();

const notifikasiController =
require('../controllers/notifikasiController');

const auth =
require('../middleware/auth');

router.get(
    '/',
    auth,
    notifikasiController.index
);

router.get(
    '/tambah',
    auth,
    notifikasiController.tambahForm
);

router.post(
    '/tambah',
    auth,
    notifikasiController.insert
);

router.get(
    '/edit/:id',
    auth,
    notifikasiController.editForm
);

router.post(
    '/edit/:id',
    auth,
    notifikasiController.update
);

router.get(
    '/hapus/:id',
    auth,
    notifikasiController.delete
);

module.exports = router;