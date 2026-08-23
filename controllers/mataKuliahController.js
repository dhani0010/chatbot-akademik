const mataKuliah =
require('../models/mataKuliahModel');

exports.index = (req,res)=>{

    mataKuliah.getAll((err,data)=>{

        if(err){
            console.log(err);
            return res.send('Terjadi Error');
        }

        res.render(
            'mataKuliah',
            {
                data:data
            }
        );

    });

};

exports.tambahForm = (req,res)=>{

    res.render('tambahMataKuliah');

};

exports.insert = (req,res)=>{

    const data = {

        kode_mk:req.body.kode_mk,
        nama_mk:req.body.nama_mk,
        sks:req.body.sks,
        semester:req.body.semester

    };

    mataKuliah.insert(
        data,
        (err,result)=>{

            if(err){
                console.log(err);
                return res.send('Gagal Simpan');
            }

            res.redirect('/matakuliah');

        }
    );

};

exports.editForm = (req,res)=>{

    const id = req.params.id;

    mataKuliah.findById(
        id,
        (err,data)=>{

            if(err){
                console.log(err);
                return res.send('Error');
            }

            res.render(
                'editMataKuliah',
                {
                    mk:data[0]
                }
            );

        }
    );

};

exports.update = (req,res)=>{

    const id = req.params.id;

    const data = {

        kode_mk:req.body.kode_mk,
        nama_mk:req.body.nama_mk,
        sks:req.body.sks,
        semester:req.body.semester

    };

    mataKuliah.update(
        id,
        data,
        (err,result)=>{

            if(err){
                console.log(err);
                return res.send('Gagal Update');
            }

            res.redirect('/matakuliah');

        }
    );

};

exports.delete = (req,res)=>{

    const id = req.params.id;

    mataKuliah.delete(
        id,
        (err,result)=>{

            if(err){
                console.log(err);
                return res.send('Gagal Hapus');
            }

            res.redirect('/matakuliah');

        }
    );

};