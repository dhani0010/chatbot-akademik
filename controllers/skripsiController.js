const skripsi =
require('../models/skripsiModel');
const mahasiswa = require('../models/mahasiswaModel');
const dosen = require('../models/dosenModel');

exports.index = (req,res)=>{

    skripsi.getAll((err,data)=>{

        if(err){
            console.log(err);
            return res.send('Terjadi Error');
        }

        res.render(
            'skripsi',
            {
                data:data
            }
        );

    });

};

exports.tambahForm = (req,res)=>{

    mahasiswa.getAll((err,mhs)=>{

        if(err) return res.send('Error');

        dosen.getAll((err,dsn)=>{

            if(err) return res.send('Error');

            res.render('tambahSkripsi',{
                mahasiswa:mhs,
                dosen:dsn
            });

        });

    });

};

exports.insert = (req,res)=>{

    const data = {

        id_mahasiswa : req.body.id_mahasiswa,
        judul : req.body.judul,
        pembimbing : req.body.pembimbing,
        tahun : req.body.tahun,
        status : req.body.status,
        tanggal_sidang : req.body.tanggal_sidang

    };

    skripsi.insert(data,(err,result)=>{

        if(err){
            console.log(err);
            return res.send('Gagal Simpan');
        }

        res.redirect('/skripsi');

    });

};

exports.editForm = (req,res)=>{

    const id = req.params.id;

    skripsi.findById(id,(err,skripsiData)=>{

        if(err){
            console.log(err);
            return res.send('Error');
        }

        mahasiswa.getAll((err,mhs)=>{

            if(err){
                console.log(err);
                return res.send('Error');
            }

            dosen.getAll((err,dsn)=>{

                if(err){
                    console.log(err);
                    return res.send('Error');
                }

                res.render(
                    'editSkripsi',
                    {
                        skripsi: skripsiData[0],
                        mahasiswa: mhs,
                        dosen: dsn
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
        judul : req.body.judul,
        pembimbing : req.body.pembimbing,
        tahun : req.body.tahun,
        status : req.body.status,
        tanggal_sidang : req.body.tanggal_sidang

    };

    skripsi.update(id,data,(err,result)=>{

        if(err){
            console.log(err);
            return res.send('Gagal Update');
        }

        res.redirect('/skripsi');

    });

};

exports.delete = (req,res)=>{

    const id = req.params.id;

    skripsi.delete(id,(err,result)=>{

        if(err){
            console.log(err);
            return res.send('Gagal Hapus');
        }

        res.redirect('/skripsi');

    });

};