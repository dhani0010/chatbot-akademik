const express = require('express');
const router = express.Router();

const jadwalController =
require('../controllers/jadwalController');

const auth =
require('../middleware/auth');

router.get(
'/',
auth,
jadwalController.index
);

router.get(
'/tambah',
auth,
jadwalController.tambahForm
);

router.post(
'/tambah',
auth,
jadwalController.insert
);

router.get(
'/edit/:id',
auth,
jadwalController.editForm
);

router.post(
'/edit/:id',
auth,
jadwalController.update
);

router.get(
'/hapus/:id',
auth,
jadwalController.delete
);

module.exports = router;