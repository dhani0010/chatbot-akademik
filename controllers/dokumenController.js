const dokumen =
require('../models/dokumenModel');

exports.index = (req,res)=>{

    dokumen.getAll((err,data)=>{

        if(err){
            console.log(err);
            return res.send('Error');
        }

        res.render(
            'dokumen',
            {
                data:data
            }
        );

    });

};

exports.tambahForm = (req,res)=>{

    res.render('tambahDokumen');

};

exports.insert = (req,res)=>{

    const data = {

        nama:req.body.nama,
        kategori:req.body.kategori,
        file:req.file.filename,
        upload:new Date()

    };

    dokumen.insert(
        data,
        (err)=>{

            if(err){
                console.log(err);
                return res.send('Gagal');
            }

            res.redirect('/dokumen');

        }
    );

};

exports.editForm = (req,res)=>{

    dokumen.findById(
        req.params.id,
        (err,data)=>{

            if(err){
                console.log(err);
                return res.send('Error');
            }

            res.render(
                'editDokumen',
                {
                    dokumen:data[0]
                }
            );

        }
    );

};

exports.update = (req,res)=>{

    const data = {

        nama:req.body.nama,
        kategori:req.body.kategori

    };

    if(req.file){

        data.file =
        req.file.filename;

    }

    dokumen.update(
        req.params.id,
        data,
        (err)=>{

            if(err){
                console.log(err);
                return res.send('Gagal');
            }

            res.redirect('/dokumen');

        }
    );

};

exports.delete = (req,res)=>{

    dokumen.delete(
        req.params.id,
        (err)=>{

            if(err){
                console.log(err);
                return res.send('Gagal Hapus');
            }

            res.redirect('/dokumen');

        }
    );

};

exports.download = (req,res)=>{

    const id = req.params.id;

    dokumen.findById(id,(err,data)=>{

        if(err || data.length === 0){
            return res.send('File tidak ditemukan');
        }

        const path = require('path');

        const filePath = path.join(
            __dirname,
            '../public/uploads/',
            data[0].file
        );

        res.download(filePath);

    });

};