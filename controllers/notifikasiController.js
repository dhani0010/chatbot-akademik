const notifikasi =
require('../models/notifikasiModel');

const mahasiswa =
require('../models/mahasiswaModel');

exports.index = (req,res)=>{

    notifikasi.getAll((err,data)=>{

        if(err){
            console.log(err);
            return res.send('Terjadi Error');
        }

        res.render(
            'notifikasi',
            {
                data:data
            }
        );

    });

};

exports.tambahForm = (req,res)=>{

    mahasiswa.getAll((err,mhs)=>{

        if(err){
            console.log(err);
            return res.send('Error');
        }

        res.render(
            'tambahNotifikasi',
            {
                mahasiswa:mhs
            }
        );

    });

};

exports.insert = (req,res)=>{

    const data = {

        id_mahasiswa:req.body.id_mahasiswa,
        judul:req.body.judul,
        pesan:req.body.pesan,
        tanggal:req.body.tanggal,
        status:req.body.status

    };

    notifikasi.insert(data,(err,result)=>{

        if(err){
            console.log(err);
            return res.send('Gagal Simpan');
        }

        res.redirect('/notifikasi');

    });

};

exports.editForm = (req,res)=>{

    const id = req.params.id;

    notifikasi.findById(id,(err,data)=>{

        if(err){
            console.log(err);
            return res.send('Error');
        }

        mahasiswa.getAll((err,mhs)=>{

            if(err){
                console.log(err);
                return res.send('Error');
            }

            res.render(
                'editNotifikasi',
                {
                    notifikasi:data[0],
                    mahasiswa:mhs
                }
            );

        });

    });

};

exports.update = (req,res)=>{

    const id = req.params.id;

    const data = {

        id_mahasiswa:req.body.id_mahasiswa,
        judul:req.body.judul,
        pesan:req.body.pesan,
        tanggal:req.body.tanggal,
        status:req.body.status

    };

    notifikasi.update(id,data,(err,result)=>{

        if(err){
            console.log(err);
            return res.send('Gagal Update');
        }

        res.redirect('/notifikasi');

    });

};

exports.delete = (req,res)=>{

    const id = req.params.id;

    notifikasi.delete(id,(err,result)=>{

        if(err){
            console.log(err);
            return res.send('Gagal Hapus');
        }

        res.redirect('/notifikasi');

    });

};