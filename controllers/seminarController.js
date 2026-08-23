const seminar =
require('../models/seminarModel');

const db =
require('../config/database');

exports.index = (req,res)=>{

    seminar.getAll((err,data)=>{

        if(err){
            console.log(err);
            return res.send('Terjadi Error');
        }

        res.render(
            'seminar',
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
                'tambahSeminar',
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

        id_mahasiswa:
        req.body.id_mahasiswa,

        tanggal:
        req.body.tanggal,

        ruang:
        req.body.ruang,

        pembimbing:
        req.body.pembimbing,

        penguji_1:
        req.body.penguji_1,

        penguji_2:
        req.body.penguji_2

    };

    seminar.insert(
        data,
        (err,result)=>{

            if(err){
                console.log(err);
                return res.send('Gagal Simpan');
            }

            res.redirect('/seminar');

        }
    );

};

exports.editForm = (req,res)=>{

    const id =
    req.params.id;

    seminar.findById(
        id,
        (err,data)=>{

        db.query(
            'SELECT * FROM mahasiswa',
            (err,mahasiswa)=>{

        db.query(
            'SELECT * FROM dosen',
            (err,dosen)=>{

            res.render(
                'editSeminar',
                {
                    seminar:data[0],
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

        id_mahasiswa:
        req.body.id_mahasiswa,

        tanggal:
        req.body.tanggal,

        ruang:
        req.body.ruang,

        pembimbing:
        req.body.pembimbing,

        penguji_1:
        req.body.penguji_1,

        penguji_2:
        req.body.penguji_2
    };

    seminar.update(
        id,
        data,
        (err,result)=>{

            if(err){
                console.log(err);
                return res.send('Gagal Update');
            }

            res.redirect('/seminar');

        }
    );

};

exports.delete = (req,res)=>{

    seminar.delete(
        req.params.id,
        (err,result)=>{

            if(err){
                console.log(err);
                return res.send('Gagal Hapus');
            }

            res.redirect('/seminar');

        }
    );

};