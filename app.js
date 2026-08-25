const express = require('express');
const session = require('express-session');
const bodyParser = require('body-parser');

const app = express();

app.set('view engine','ejs');

app.use(bodyParser.urlencoded({
    extended:true
}));

app.use(express.static('public'));

app.use(session({
    secret:'chatbot',
    resave:false,
    saveUninitialized:false
}));

const authRoutes = require('./routes/authRoutes');
const mahasiswaRoutes = require('./routes/mahasiswaRoutes');
const jadwalRoutes = require('./routes/jadwalRoutes');
const pengumumanRoutes = require('./routes/pengumumanRoutes');
const dosenRoutes = require('./routes/dosenRoutes');
const skripsiRoutes = require('./routes/skripsiRoutes');
const judulSkripsiRoutes = require('./routes/judulSkripsiRoutes');
const notifikasiRoutes = require('./routes/notifikasiRoutes');
const chatbotLogRoutes = require('./routes/chatbotLogRoutes');
const dokumenRoutes = require('./routes/dokumenRoutes');
const faqRoutes = require('./routes/faqRoutes');
const mataKuliahRoutes = require('./routes/mataKuliahRoutes');
const kpRoutes = require('./routes/kpRoutes');
const kknRoutes = require('./routes/kknRoutes');
const kalenderRoutes = require('./routes/kalenderRoutes');

const auth = require('./middleware/auth');

app.get('/dashboard', auth, (req,res)=>{
    res.render('dashboard');
});

app.use('/', authRoutes);
app.use('/mahasiswa', mahasiswaRoutes);
app.use('/jadwal', jadwalRoutes);
app.use('/pengumuman', pengumumanRoutes);
app.use('/dosen', dosenRoutes);
app.use('/skripsi', skripsiRoutes);
app.use('/judulSkripsi', judulSkripsiRoutes);
app.use('/notifikasi', notifikasiRoutes);
app.use('/chatbotLog', chatbotLogRoutes);
app.use('/dokumen', dokumenRoutes);
app.use('/faq', faqRoutes);
app.use('/matakuliah', mataKuliahRoutes);
app.use('/kp', kpRoutes);
app.use('/kkn', kknRoutes);
app.use('/kalender', kalenderRoutes);

const PORT = process.env.PORT || 3000;

app.listen(PORT, () => {
    console.log(`Server Running on port ${PORT}`);
});

require('./whatsapp/bot');
