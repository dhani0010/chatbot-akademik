const express = require('express');
const router = express.Router();

const kalenderController =
require('../controllers/kalenderController');

const auth =
require('../middleware/auth');

router.get(
    '/',
    auth,
    kalenderController.index
);

router.get(
    '/tambah',
    auth,
    kalenderController.tambahForm
);

router.post(
    '/tambah',
    auth,
    kalenderController.insert
);

router.get(
    '/edit/:id',
    auth,
    kalenderController.editForm
);

router.post(
    '/edit/:id',
    auth,
    kalenderController.update
);

router.get(
    '/hapus/:id',
    auth,
    kalenderController.delete
);

module.exports = router;