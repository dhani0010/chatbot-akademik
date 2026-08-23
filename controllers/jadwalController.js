const jadwal = require('../models/jadwalModel');
const mataKuliah = require('../models/mataKuliahModel');
const dosen = require('../models/dosenModel');

exports.index = (req,res)=>{

    jadwal.getAll((err,data)=>{

        res.render(
            'jadwal',
            {
                data:data
            }
        );

    });

};

exports.tambahForm = (req,res)=>{

    mataKuliah.getAll((err,mk)=>{

        if(err){
            console.log(err);
            return res.send('Error Mata Kuliah');
        }

        dosen.getAll((err,dsn)=>{

            if(err){
                console.log(err);
                return res.send('Error Dosen');
            }

            res.render(
                'tambahJadwal',
                {
                    mataKuliah: mk,
                    dosen: dsn
                }
            );

        });

    });

};

exports.insert = (req,res)=>{

    console.log(req.body);

    const data = {
        id_mk       : req.body.id_mk,
        id_dosen    : req.body.id_dosen,
        semester    : req.body.semester,
        kelas       : req.body.kelas,
        hari        : req.body.hari,
        jam_mulai   : req.body.jam_mulai,
        jam_selesai : req.body.jam_selesai,
        ruangan     : req.body.ruangan
    };

    jadwal.insert(data,(err,result)=>{

        console.log(err);
        console.log(result);

        res.redirect('/jadwal');

    });

};

exports.editForm = (req,res)=>{

    jadwal.findById(req.params.id,(err,data)=>{

        if(err){
            console.log(err);
            return res.send('Error');
        }

        mataKuliah.getAll((err,mk)=>{

            dosen.getAll((err,dsn)=>{

                res.render('editJadwal',{
                    jadwal : data[0],
                    mataKuliah : mk,
                    dosen : dsn
                });

            });

        });

    });

};

exports.update = (req,res)=>{

    const data = {
        id_mk       : req.body.id_mk,
        id_dosen    : req.body.id_dosen,
        semester    : req.body.semester,
        kelas       : req.body.kelas,
        hari        : req.body.hari,
        jam_mulai   : req.body.jam_mulai,
        jam_selesai : req.body.jam_selesai,
        ruangan     : req.body.ruangan
    };

    jadwal.update(
        req.params.id,
        data,
        ()=>{

            res.redirect(
                '/jadwal'
            );

        }
    );

};

exports.delete = (req,res)=>{

    jadwal.delete(
        req.params.id,
        ()=>{

            res.redirect(
                '/jadwal'
            );

        }
    );

};