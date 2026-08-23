const express = require('express');
const router = express.Router();

const mataKuliahController =
require('../controllers/mataKuliahController');

const auth =
require('../middleware/auth');

router.get(
    '/',
    auth,
    mataKuliahController.index
);

router.get(
    '/tambah',
    auth,
    mataKuliahController.tambahForm
);

router.post(
    '/tambah',
    auth,
    mataKuliahController.insert
);

router.get(
    '/edit/:id',
    auth,
    mataKuliahController.editForm
);

router.post(
    '/edit/:id',
    auth,
    mataKuliahController.update
);

router.get(
    '/hapus/:id',
    auth,
    mataKuliahController.delete
);

module.exports = router;