const express = require('express');
const router = express.Router();

const sidangController =
require('../controllers/sidangController');

const auth =
require('../middleware/auth');

router.get(
    '/',
    auth,
    sidangController.index
);

router.get(
    '/tambah',
    auth,
    sidangController.tambahForm
);

router.post(
    '/tambah',
    auth,
    sidangController.insert
);

router.get(
    '/edit/:id',
    auth,
    sidangController.editForm
);

router.post(
    '/edit/:id',
    auth,
    sidangController.update
);

router.get(
    '/hapus/:id',
    auth,
    sidangController.delete
);

module.exports = router;