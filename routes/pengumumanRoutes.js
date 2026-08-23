const express = require('express');
const router = express.Router();

const pengumumanController =
require('../controllers/pengumumanController');

const auth =
require('../middleware/auth');

router.get(
'/',
auth,
pengumumanController.index
);

router.get(
'/tambah',
auth,
pengumumanController.tambahForm
);

router.post(
'/tambah',
auth,
pengumumanController.insert
);

router.get(
'/edit/:id',
auth,
pengumumanController.editForm
);

router.post(
'/edit/:id',
auth,
pengumumanController.update
);

router.get(
'/hapus/:id',
auth,
pengumumanController.delete
);

module.exports = router;