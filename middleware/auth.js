module.exports = (req,res,next)=>{

    if(req.session && req.session.login){
        return next();
    }

    return res.redirect('/');
}