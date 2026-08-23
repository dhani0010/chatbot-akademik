const kkn =
require('../models/kknModel');

const db =
require('../config/database');

exports.index = (req,res)=>{

    kkn.getAll((err,data)=>{

        if(err){
            console.log(err);
            return res.send('Terjadi Error');
        }

        res.render(
            'kkn',
            {
                data:data
            }
        );

    });

};

exports.tambahForm = (req,res)=>{

    db.query(
        'SELECT * FROM mahasiswa',
        (err,mahasiswa)=>{

        db.query(
            'SELECT * FROM dosen',
            (err,dosen)=>{

            res.render(
                'tambahKKN',
                {
                    mahasiswa,
                    dosen
                }
            );

        });

    });

};

exports.insert = (req,res)=>{

    const data = {

        id_mahasiswa :
        req.body.id_mahasiswa,

        lokasi :
        req.body.lokasi,

        kelompok :
        req.body.kelompok,

        dosen_pembimbing :
        req.body.dosen_pembimbing,

        periode :
        req.body.periode,

        status :
        req.body.status

    };

    kkn.insert(
        data,
        (err,result)=>{

            if(err){

                console.log(err);

                return res.send(
                    'Gagal Simpan'
                );

            }

            res.redirect('/kkn');

        }
    );

};

exports.editForm = (req,res)=>{

    const id =
    req.params.id;

    kkn.findById(
        id,
        (err,data)=>{

        if(err){

            console.log(err);

            return res.send(
                'Terjadi Error'
            );

        }

        db.query(
            'SELECT * FROM mahasiswa',
            (err,mahasiswa)=>{

            db.query(
                'SELECT * FROM dosen',
                (err,dosen)=>{

                res.render(
                    'editKKN',
                    {
                        kkn:data[0],
                        mahasiswa,
                        dosen
                    }
                );

            });

        });

    });

};

exports.update = (req,res)=>{

    const id =
    req.params.id;

    const data = {

        id_mahasiswa :
        req.body.id_mahasiswa,

        lokasi :
        req.body.lokasi,

        kelompok :
        req.body.kelompok,

        dosen_pembimbing :
        req.body.dosen_pembimbing,

        periode :
        req.body.periode,

        status :
        req.body.status

    };

    kkn.update(
        id,
        data,
        (err,result)=>{

            if(err){

                console.log(err);

                return res.send(
                    'Gagal Update'
                );

            }

            res.redirect('/kkn');

        }
    );

};

exports.delete = (req,res)=>{

    const id =
    req.params.id;

    kkn.delete(
        id,
        (err,result)=>{

            if(err){

                console.log(err);

                return res.send(
                    'Gagal Hapus'
                );

            }

            res.redirect('/kkn');

        }
    );

};