const faq =
require('../models/faqModel');

exports.index = (req,res)=>{

    faq.getAll((err,data)=>{

        if(err){
            console.log(err);
            return res.send('Error');
        }

        res.render(
            'faq',
            {
                data:data
            }
        );

    });

};

exports.tambahForm = (req,res)=>{

    res.render(
        'tambahFaq'
    );

};

exports.insert = (req,res)=>{

    const data = {

        pertanyaan :
        req.body.pertanyaan,

        jawaban :
        req.body.jawaban,

        kategori :
        req.body.kategori

    };

    faq.insert(
        data,
        (err)=>{

            if(err){
                console.log(err);
                return res.send('Gagal');
            }

            res.redirect('/faq');

        }
    );

};

exports.editForm = (req,res)=>{

    faq.findById(
        req.params.id,
        (err,data)=>{

            if(err){
                console.log(err);
                return res.send('Error');
            }

            res.render(
                'editFaq',
                {
                    faq:data[0]
                }
            );

        }
    );

};

exports.update = (req,res)=>{

    const data = {

        pertanyaan :
        req.body.pertanyaan,

        jawaban :
        req.body.jawaban,

        kategori :
        req.body.kategori

    };

    faq.update(
        req.params.id,
        data,
        (err)=>{

            if(err){
                console.log(err);
                return res.send('Gagal Update');
            }

            res.redirect('/faq');

        }
    );

};

exports.delete = (req,res)=>{

    faq.delete(
        req.params.id,
        (err)=>{

            if(err){
                console.log(err);
                return res.send('Gagal Hapus');
            }

            res.redirect('/faq');

        }
    );

};