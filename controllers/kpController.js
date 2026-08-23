const kp =
require('../models/kpModel');

const mahasiswa =
require('../models/mahasiswaModel');

const dosen =
require('../models/dosenModel');

exports.index = (req,res)=>{

    kp.getAll((err,data)=>{

        if(err){
            console.log(err);
            return res.send('Terjadi Error');
        }

        res.render(
            'kp',
            {
                data:data
            }
        );

    });

};

exports.tambahForm = (req,res)=>{

    mahasiswa.getAll((err,mhs)=>{

        dosen.getAll((err2,dsn)=>{

            res.render(
                'tambahKP',
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

        id_mahasiswa:req.body.id_mahasiswa,
        judul:req.body.judul,
        dosen_pembimbing:req.body.dosen_pembimbing,
        tahun:req.body.tahun

    };

    kp.insert(data,(err)=>{

        if(err){
            console.log(err);
            return res.send('Gagal Simpan');
        }

        res.redirect('/kp');

    });

};

exports.editForm = (req,res)=>{

    kp.findById(
        req.params.id,
        (err,data)=>{

            if(err){
                console.log(err);
                return res.send('Terjadi Error');
            }

            mahasiswa.getAll((err2,mhs)=>{

                if(err2){
                    console.log(err2);
                    return res.send('Terjadi Error');
                }

                dosen.getAll((err3,dsn)=>{

                    if(err3){
                        console.log(err3);
                        return res.send('Terjadi Error');
                    }

                    res.render(
                        'editKP',
                        {
                            kp: data[0],
                            mahasiswa: mhs,
                            dosen: dsn
                        }
                    );

                });

            });

        }
    );

};

exports.update = (req,res)=>{

    const data = {

        id_mahasiswa:req.body.id_mahasiswa,
        judul:req.body.judul,
        dosen_pembimbing:req.body.dosen_pembimbing,
        tahun:req.body.tahun

    };

    kp.update(
        req.params.id,
        data,
        (err)=>{

            if(err){
                console.log(err);
                return res.send('Gagal Update');
            }

            res.redirect('/kp');

        }
    );

};

exports.delete = (req,res)=>{

    kp.delete(
        req.params.id,
        (err)=>{

            if(err){
                console.log(err);
                return res.send('Gagal Hapus');
            }

            res.redirect('/kp');

        }
    );

};