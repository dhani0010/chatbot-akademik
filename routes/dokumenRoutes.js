const express = require('express');
const router = express.Router();

const dokumenController =
require('../controllers/dokumenController');

const auth =
require('../middleware/auth');

const upload =
require('../middleware/upload');

router.get(
    '/',
    auth,
    dokumenController.index
);

router.get(
    '/tambah',
    auth,
    dokumenController.tambahForm
);

router.post(
    '/tambah',
    auth,
    upload.single('file'),
    dokumenController.insert
);

router.get(
    '/edit/:id',
    auth,
    dokumenController.editForm
);

router.post(
    '/edit/:id',
    auth,
    upload.single('file'),
    dokumenController.update
);

router.get(
    '/hapus/:id',
    auth,
    dokumenController.delete
);

router.get('/download/:id', auth, dokumenController.download);

module.exports = router;