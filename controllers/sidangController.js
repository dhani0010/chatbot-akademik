const sidang =
require('../models/sidangModel');

const mahasiswa =
require('../models/mahasiswaModel');

const dosen =
require('../models/dosenModel');

exports.index = (req,res)=>{

    sidang.getAll((err,data)=>{

        if(err){
            console.log(err);
            return res.send('Terjadi Error');
        }

        res.render(
            'sidang',
            {
                data:data
            }
        );

    });

};

exports.tambahForm = (req,res)=>{

    mahasiswa.getAll((err,mhs)=>{

        dosen.getAll((err,dsn)=>{

            res.render(
                'tambahSidang',
                {
                    mahasiswa:mhs,
                    dosen:dsn
                }
            );

        });

    });

};

exports.insert = (req,res)=>{

    const data = {

        id_mahasiswa : req.body.id_mahasiswa,
        tanggal : req.body.tanggal,
        ruang : req.body.ruang,
        jam : req.body.jam,

        pembimbing : req.body.pembimbing,

        penguji_1 : req.body.penguji_1,
        penguji_2 : req.body.penguji_2,
        penguji_3 : req.body.penguji_3

    };

    sidang.insert(data,(err,result)=>{

        if(err){
            console.log(err);
            return res.send('Gagal Simpan');
        }

        res.redirect('/sidang');

    });

};

exports.editForm = (req,res)=>{

    const id = req.params.id;

    sidang.findById(id,(err,data)=>{

        mahasiswa.getAll((err,mhs)=>{

            dosen.getAll((err,dsn)=>{

                res.render(
                    'editSidang',
                    {
                        sidang:data[0],
                        mahasiswa:mhs,
                        dosen:dsn
                    }
                );

            });

        });

    });

};

exports.update = (req,res)=>{

    const id = req.params.id;

    const data = {

        id_mahasiswa : req.body.id_mahasiswa,
        tanggal : req.body.tanggal,
        ruang : req.body.ruang,
        jam : req.body.jam,

        pembimbing : req.body.pembimbing,

        penguji_1 : req.body.penguji_1,
        penguji_2 : req.body.penguji_2,
        penguji_3 : req.body.penguji_3

    };

    sidang.update(id,data,(err,result)=>{

        if(err){
            console.log(err);
            return res.send('Gagal Update');
        }

        res.redirect('/sidang');

    });

};

exports.delete = (req,res)=>{

    const id = req.params.id;

    sidang.delete(id,(err,result)=>{

        if(err){
            console.log(err);
            return res.send('Gagal Hapus');
        }

        res.redirect('/sidang');

    });

};