const mahasiswa =
require('../models/mahasiswaModel');

exports.index = (req,res)=>{

    mahasiswa.getAll((err,data)=>{

        if(err){
            console.log(err);
            return res.send('Terjadi Error');
        }

        res.render(
            'mahasiswa',
            {
                data:data
            }
        );

    });

};

exports.tambahForm = (req,res)=>{
    res.render('tambahMahasiswa');
};

exports.insert = (req,res)=>{

    const data = {
        npm:req.body.npm,
        nama:req.body.nama,
        jenis_kelamin:req.body.jenis_kelamin,
        no_hp:req.body.no_hp,
        angkatan:req.body.angkatan,
        status_mahasiswa:req.body.status_mahasiswa,
        semester:req.body.semester
    };

    mahasiswa.insert(data,(err,result)=>{

        if(err){
            console.log(err);
            return res.send("Gagal");
        }

        res.redirect('/mahasiswa');

    });

};

exports.editForm = (req,res)=>{

    const id = req.params.id;

    mahasiswa.findById(id,(err,data)=>{

        if(err){
            console.log(err);
            return res.send('Error');
        }

        res.render(
            'editMahasiswa',
            {
                mahasiswa:data[0]
            }
        );

    });

};

exports.update = (req,res)=>{

    const id = req.params.id;

    const data = {
        npm:req.body.npm,
        nama:req.body.nama,
        jenis_kelamin:req.body.jenis_kelamin,
        no_hp:req.body.no_hp,
        angkatan:req.body.angkatan,
        status_mahasiswa:req.body.status_mahasiswa,
        semester:req.body.semester
    };

    mahasiswa.update(
        id,
        data,
        (err,result)=>{

            if(err){
                console.log(err);
                return res.send('Gagal Update');
            }

            res.redirect('/mahasiswa');

        }
    );

};

exports.delete = (req,res)=>{

    const id = req.params.id;

    mahasiswa.delete(
        id,
        (err,result)=>{

            if(err){
                console.log(err);
                return res.send('Gagal Hapus');
            }

            res.redirect('/mahasiswa');

        }
    );

};