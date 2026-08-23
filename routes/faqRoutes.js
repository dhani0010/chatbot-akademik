const express = require('express');
const router = express.Router();

const faqController =
require('../controllers/faqController');

const auth =
require('../middleware/auth');

router.get(
    '/',
    auth,
    faqController.index
);

router.get(
    '/tambah',
    auth,
    faqController.tambahForm
);

router.post(
    '/tambah',
    auth,
    faqController.insert
);

router.get(
    '/edit/:id',
    auth,
    faqController.editForm
);

router.post(
    '/edit/:id',
    auth,
    faqController.update
);

router.get(
    '/hapus/:id',
    auth,
    faqController.delete
);

module.exports = router;