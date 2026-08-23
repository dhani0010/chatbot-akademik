const judulSkripsi =
require('../models/judulSkripsiModel');

const dosen =
require('../models/dosenModel');
const mahasiswa =
require('../models/mahasiswaModel');

exports.index = (req,res)=>{

    judulSkripsi.getAll((err,data)=>{

        if(err){
            console.log(err);
            return res.send('Terjadi Error');
        }

        res.render(
            'judulSkripsi',
            {
                data:data
            }
        );

    });

};

exports.tambahForm = (req,res)=>{

    dosen.getAll((err,dosenData)=>{

        if(err){
            console.log(err);
            return res.send('Error');
        }

        mahasiswa.getAll((err,mahasiswaData)=>{

            if(err){
                console.log(err);
                return res.send('Error');
            }

            res.render(
                'tambahJudulSkripsi',
                {
                    dosen:dosenData,
                    mahasiswa:mahasiswaData
                }
            );

        });

    });

};

exports.insert = (req,res)=>{

    const data = {

        judul:req.body.judul,
        id_mahasiswa:req.body.id_mahasiswa,
        tahun:req.body.tahun,
        dosen_pembimbing_1:req.body.dosen_pembimbing_1,
        dosen_pembimbing_2:
            req.body.dosen_pembimbing_2 === ''
                ? null
                : req.body.dosen_pembimbing_2

    };

    judulSkripsi.insert(data,(err,result)=>{

        if(err){
            console.log(err);
            return res.send('Gagal Simpan');
        }

        res.redirect('/judulSkripsi');

    });

};

exports.editForm = (req,res)=>{

    const id = req.params.id;

    judulSkripsi.findById(id,(err,judulData)=>{

        if(err){
            console.log(err);
            return res.send('Error');
        }

        dosen.getAll((err,dosenData)=>{

            if(err){
                console.log(err);
                return res.send('Error');
            }

            mahasiswa.getAll((err,mahasiswaData)=>{

                if(err){
                    console.log(err);
                    return res.send('Error');
                }

                res.render(
                    'editJudulSkripsi',
                    {
                        judul:judulData[0],
                        dosen:dosenData,
                        mahasiswa:mahasiswaData
                    }
                );

            });

        });

    });

};

exports.update = (req,res)=>{

    const id = req.params.id;

    const data = {

        judul:req.body.judul,
        id_mahasiswa:req.body.id_mahasiswa,
        tahun:req.body.tahun,
        dosen_pembimbing_1:req.body.dosen_pembimbing_1,
        dosen_pembimbing_2:
            req.body.dosen_pembimbing_2 === ''
                ? null
                : req.body.dosen_pembimbing_2

    };

    judulSkripsi.update(id,data,(err,result)=>{

        if(err){
            console.log(err);
            return res.send('Gagal Update');
        }

        res.redirect('/judulSkripsi');

    });

};

exports.delete = (req,res)=>{

    const id = req.params.id;

    judulSkripsi.delete(id,(err,result)=>{

        if(err){
            console.log(err);
            return res.send('Gagal Hapus');
        }

        res.redirect('/judulSkripsi');

    });

};

exports.cekJudul = (req,res)=>{

    const judul = req.body.judul;

    db.query(
        'SELECT * FROM judul_skripsi WHERE judul=?',
        [judul],
        (err,result)=>{

            if(result.length > 0){

                return res.json({
                    tersedia:false,
                    pesan:'Judul sudah digunakan'
                });

            }

            res.json({
                tersedia:true,
                pesan:'Judul tersedia'
            });

        }
    );

};