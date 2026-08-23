const express = require('express');
const router = express.Router();

const mahasiswaController =
require('../controllers/mahasiswaController');

const auth =
require('../middleware/auth');

router.get(
'/',
auth,
mahasiswaController.index
);

router.get(
'/tambah',
auth,
mahasiswaController.tambahForm
);

router.post(
'/tambah',
auth,
mahasiswaController.insert
);

router.get(
'/edit/:id',
auth,
mahasiswaController.editForm
);

router.post(
'/edit/:id',
auth,
mahasiswaController.update
);

router.get(
'/hapus/:id',
auth,
mahasiswaController.delete
);

module.exports = router;