const multer = require('multer');
const path = require('path');

const storage = multer.diskStorage({

    destination: (req,file,cb)=>{

        cb(
            null,
            'public/uploads/'
        );

    },

    filename: (req,file,cb)=>{

        cb(
            null,
            Date.now() +
            path.extname(file.originalname)
        );

    }

});

const fileFilter = (req,file,cb)=>{

    const ext =
    path.extname(file.originalname)
    .toLowerCase();

    if(
        ext === '.pdf' ||
        ext === '.doc' ||
        ext === '.docx'
    ){

        cb(null,true);

    }else{

        cb(
            new Error(
                'Hanya PDF, DOC, DOCX'
            )
        );

    }

};

module.exports = multer({

    storage,
    fileFilter

});