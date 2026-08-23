const express = require('express');

const router =
express.Router();

const kknController =
require('../controllers/kknController');

const auth =
require('../middleware/auth');

router.get(
    '/',
    auth,
    kknController.index
);

router.get(
    '/tambah',
    auth,
    kknController.tambahForm
);

router.post(
    '/tambah',
    auth,
    kknController.insert
);

router.get(
    '/edit/:id',
    auth,
    kknController.editForm
);

router.post(
    '/edit/:id',
    auth,
    kknController.update
);

router.get(
    '/hapus/:id',
    auth,
    kknController.delete
);

module.exports = router;