const express = require('express');
const router = express.Router();

const authController =
require('../controllers/authController');

router.get(
'/',
authController.loginPage
);

router.post(
'/login',
authController.loginProcess
);

router.get(
'/logout',
authController.logout
);

module.exports = router;