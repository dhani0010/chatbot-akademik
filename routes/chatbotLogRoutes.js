const express = require('express');
const router = express.Router();

const chatbotLogController =
require('../controllers/chatbotLogController');

const auth =
require('../middleware/auth');

router.get(
    '/',
    auth,
    chatbotLogController.index
);

router.get(
    '/hapus/:id',
    auth,
    chatbotLogController.delete
);

module.exports = router;