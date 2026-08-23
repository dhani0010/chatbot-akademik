const express = require('express');
const router = express.Router();

const skripsiController =
require('../controllers/skripsiController');

const auth =
require('../middleware/auth');

router.get(
    '/',
    auth,
    skripsiController.index
);

router.get(
    '/tambah',
    auth,
    skripsiController.tambahForm
);

router.post(
    '/tambah',
    auth,
    skripsiController.insert
);

router.get(
    '/edit/:id',
    auth,
    skripsiController.editForm
);

router.post(
    '/edit/:id',
    auth,
    skripsiController.update
);

router.get(
    '/hapus/:id',
    auth,
    skripsiController.delete
);

module.exports = router;