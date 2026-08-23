const dosen =
require('../models/dosenModel');

exports.index = (req,res)=>{

    dosen.getAll((err,data)=>{

        if(err){
            console.log(err);
            return res.send('Terjadi Error');
        }

        res.render(
            'dosen',
            {
                data:data
            }
        );

    });

};

exports.tambahForm = (req,res)=>{
    res.render('tambahDosen');
};

exports.editForm = (req,res)=>{

    const id = req.params.id;

    dosen.findById(id,(err,data)=>{

        if(err){
            console.log(err);
            return res.send('Error');
        }

        res.render(
            'editDosen',
            {
                dosen:data[0]
            }
        );

    });

};

exports.insert = (req,res)=>{

    const data = {

        nama : req.body.nama,
        kode : req.body.kode

    };

    dosen.insert(data,(err,result)=>{

        if(err){
            console.log(err);
            return res.send('Gagal Menyimpan Data');
        }

        res.redirect('/dosen');

    });

};

exports.update = (req,res)=>{

    const id = req.params.id;

    const data = {

        nama : req.body.nama,
        kode : req.body.kode

    };

    dosen.update(id,data,(err,result)=>{

        if(err){
            console.log(err);
            return res.send('Gagal Update Data');
        }

        res.redirect('/dosen');

    });

};

exports.delete = (req,res)=>{

    const id = req.params.id;

    dosen.delete(id,(err,result)=>{

        if(err){
            console.log(err);
            return res.send('Gagal Hapus Data');
        }

        res.redirect('/dosen');

    });

};