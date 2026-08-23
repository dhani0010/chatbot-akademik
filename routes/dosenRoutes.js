const express = require('express');
const router = express.Router();

const dosenController =
require('../controllers/dosenController');

const auth =
require('../middleware/auth');

router.get(
    '/',
    auth,
    dosenController.index
);

router.get(
    '/tambah',
    auth,
    dosenController.tambahForm
);

router.post(
    '/tambah',
    auth,
    dosenController.insert
);

router.get(
    '/edit/:id',
    auth,
    dosenController.editForm
);

router.post(
    '/edit/:id',
    auth,
    dosenController.update
);

router.get(
    '/hapus/:id',
    auth,
    dosenController.delete
);

module.exports = router;