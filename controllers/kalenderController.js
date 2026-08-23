const kalender =
require('../models/kalenderModel');

exports.index = (req,res)=>{

    kalender.getAll((err,data)=>{

        if(err){
            console.log(err);
            return res.send('Error');
        }

        res.render(
            'kalender',
            {
                data:data
            }
        );

    });

};

exports.tambahForm = (req,res)=>{

    res.render('tambahKalender');

};

exports.insert = (req,res)=>{

    const data = {

        kegiatan :
        req.body.kegiatan,

        tanggal_mulai :
        req.body.tanggal_mulai,

        tanggal_selesai :
        req.body.tanggal_selesai,

        kategori :
        req.body.kategori

    };

    kalender.insert(data,(err)=>{

        if(err){
            console.log(err);
            return res.send('Gagal Simpan');
        }

        res.redirect('/kalender');

    });

};

exports.editForm = (req,res)=>{

    kalender.findById(
        req.params.id,
        (err,data)=>{

            if(err){
                console.log(err);
                return res.send('Error');
            }

            res.render(
                'editKalender',
                {
                    kalender:data[0]
                }
            );

        }
    );

};

exports.update = (req,res)=>{

    const data = {

        kegiatan :
        req.body.kegiatan,

        tanggal_mulai :
        req.body.tanggal_mulai,

        tanggal_selesai :
        req.body.tanggal_selesai,

        kategori :
        req.body.kategori

    };

    kalender.update(
        req.params.id,
        data,
        (err)=>{

            if(err){
                console.log(err);
                return res.send('Gagal Update');
            }

            res.redirect('/kalender');

        }
    );

};

exports.delete = (req,res)=>{

    kalender.delete(
        req.params.id,
        (err)=>{

            if(err){
                console.log(err);
                return res.send('Gagal Hapus');
            }

            res.redirect('/kalender');

        }
    );

};