const express = require('express');
const router = express.Router();

const kpController =
require('../controllers/kpController');

const auth =
require('../middleware/auth');

router.get(
    '/',
    auth,
    kpController.index
);

router.get(
    '/tambah',
    auth,
    kpController.tambahForm
);

router.post(
    '/tambah',
    auth,
    kpController.insert
);

router.get(
    '/edit/:id',
    auth,
    kpController.editForm
);

router.post(
    '/edit/:id',
    auth,
    kpController.update
);

router.get(
    '/hapus/:id',
    auth,
    kpController.delete
);

module.exports = router;