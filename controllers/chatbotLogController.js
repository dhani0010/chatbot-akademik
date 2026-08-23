const chatbotLog =
require('../models/chatbotLogModel');

exports.index = (req,res)=>{

    chatbotLog.getAll((err,data)=>{

        if(err){
            console.log(err);
            return res.send('Terjadi Error');
        }

        res.render(
            'chatbotLog',
            {
                data:data
            }
        );

    });

};

exports.delete = (req,res)=>{

    const id = req.params.id;

    chatbotLog.delete(id,(err)=>{

        if(err){
            console.log(err);
            return res.send('Gagal Hapus');
        }

        res.redirect('/chatbot-log');

    });

};