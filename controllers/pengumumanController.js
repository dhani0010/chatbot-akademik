const pengumuman =
require('../models/pengumumanModel');

const {
    client,
    kirimPengumuman
} = require('../whatsapp/bot');;

exports.index = (req,res)=>{

    pengumuman.getAll((err,data)=>{

        data = data.map(item => {

            item.tanggal_format =
            new Date(item.tanggal)
            .toLocaleDateString(
                'id-ID',
                {
                    day:'2-digit',
                    month:'long',
                    year:'numeric'
                }
            );

            return item;

        });

        res.render(
            'pengumuman',
            { data }
        );

    });

};

exports.tambahForm = (req,res)=>{

    res.render(
        'tambahPengumuman'
    );

};

exports.insert = (req,res)=>{

    const data = {

        judul:req.body.judul,
        isi:req.body.isi,
        tanggal:req.body.tanggal,
        jam:req.body.jam

    };

    pengumuman.insert(
    data,
    (err,result)=>{

        if(err){

            console.log(err);

            return res.send(
                'Gagal'
            );

        }

        kirimPengumuman(
            data.judul,
            data.isi,
            data.tanggal,
            data.jam
        );

        res.redirect(
            '/pengumuman'
        );

    });

};

exports.editForm = (req,res)=>{

    pengumuman.findById(
        req.params.id,
        (err,data)=>{

            res.render(
                'editPengumuman',
                {
                    pengumuman:data[0]
                }
            );

        }
    );

};

exports.update = (req,res)=>{

    const data = {

        judul:req.body.judul,
        isi:req.body.isi,
        tanggal:req.body.tanggal,
        jam: req.body.jam

    };

    pengumuman.update(
        req.params.id,
        data,
        ()=>{

            res.redirect(
                '/pengumuman'
            );

        }
    );

};

exports.delete = (req,res)=>{

    pengumuman.delete(
        req.params.id,
        ()=>{

            res.redirect(
                '/pengumuman'
            );

        }
    );

};