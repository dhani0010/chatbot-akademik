const express = require('express');
const router = express.Router();

const seminarController =
require('../controllers/seminarController');

const auth =
require('../middleware/auth');

router.get(
    '/',
    auth,
    seminarController.index
);

router.get(
    '/tambah',
    auth,
    seminarController.tambahForm
);

router.post(
    '/tambah',
    auth,
    seminarController.insert
);

router.get(
    '/edit/:id',
    auth,
    seminarController.editForm
);

router.post(
    '/edit/:id',
    auth,
    seminarController.update
);

router.get(
    '/hapus/:id',
    auth,
    seminarController.delete
);

module.exports = router;