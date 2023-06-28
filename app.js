const createError = require('http-errors');
const express = require('express');
const path = require('path');
const cookieParser = require('cookie-parser');
const logger = require('morgan');
const expressLayouts = require('express-ejs-layouts');
const session = require('express-session');
const flash = require('connect-flash');

const indexRouter = require('./routes/index');
const authRouter = require('./routes/auth');
const usersRouter = require('./routes/users');
const productsRouter = require('./routes/products');
const loginRouter = require('./routes/login');
const finalizarRouter = require('./routes/finalizar');
const descricaoRouter = require('./routes/descricao');

const app = express();

app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');
app.set("layout", "./layouts/base.ejs");
app.use(expressLayouts);

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));
app.use(express.static(path.join(__dirname, 'uploads')));

app.use(session({
  secret: 'secret-key',
  resave: false,
  saveUninitialized: false
}));

app.use((req, res, next)=>{
  if(req.session.user){
    res.locals.user = req.session.user;
  }
  next();
})

app.use(flash());
app.use((req, res, next) => {
  res.locals.flashMessages = req.flash();
  next();
});



app.use('/', indexRouter);
app.use('/', authRouter);
app.use('/usuarios', usersRouter);
app.use('/produtos', productsRouter);

// app.get('/login', (req, res) => {
//   res.render('login', { layout: 'layouts/login-layout' });
// });

app.use('/login', loginRouter);
app.use('/finalizar', finalizarRouter);
app.use('/descricao', descricaoRouter);


app.use(function (req, res, next) {
  next(createError(404));
});

app.use(function (err, req, res, next) {
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  res.status(err.status || 500);
  res.render('error');
});

module.exports = app;