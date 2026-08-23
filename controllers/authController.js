const adminModel =
require('../models/adminModel');

exports.loginPage =
(req,res)=>{

    res.render('login');

};

exports.loginProcess = (req,res)=>{

    const { username, password } = req.body;

    adminModel.login(
        username,
        password,
        (err,result)=>{

            if(err){
                console.log(err);
                return res.send('Database Error');
            }

            if(result.length > 0){

                req.session.login = true;

                return res.redirect('/dashboard');

            }else{

                return res.send('Username atau Password Salah');

            }

        }
    );

};

exports.logout = (req,res)=>{

    req.session.destroy((err)=>{

        if(err){
            console.log(err);
            return res.send('Gagal Logout');
        }

        res.redirect('/');

    });

};