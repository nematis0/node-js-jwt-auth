const { authJwt } = require("../middleware");
const controller = require("../controllers/user.controller");
const fileupload = require("express-fileupload");

module.exports = function(app) {
  app.use(function(req, res, next) {
    res.header(
      "Access-Control-Allow-Headers",
      "x-access-token, Origin, Content-Type, Accept"
    );
    next();
  });
//-------------------------------------------------Saját backend-----------------------------------------------------------------------
  app.get('/Animek', (req, res) => {
    var mysql = require('mysql')
    var connection = mysql.createConnection({
      host: 'localhost',
      user: 'root',
      password: '',
      database: 'zarodolgozat'
    })
    
    connection.connect()
    
    connection.query('SELECT * from anime', function (err, rows, fields) {
      if (err) throw err
    
      console.log(rows)
    
      res.send(rows)
    })
    
    connection.end()    
    
  })
//-------------------------------------------------Saját backend Keresés laphoz-----------------------------------------------------------------------
  app.post('/kereses', (req, res) => {
    var mysql = require('mysql')
    var connection = mysql.createConnection({
      host: 'localhost',
      user: 'root',
      password: '',
      database: 'zarodolgozat'
    }) 

    connection.connect()

    var feltetel2='anime_cim LIKE "%'+req.body.bevitel4+'%"';
    connection.query('SELECT anime_cim,anime_leiras,anime_kep FROM anime WHERE '+feltetel2, function (err, rows, fields) {

      if (err) throw err

      console.log(rows)

      res.send(rows)

    })

    connection.end()    

  })
  
//-------------------------------------------------Saját backend Keresés laphoz tipus gombok-----------------------------------------------------------------------
  app.post('/tipusok', (req, res) => {
    var mysql = require('mysql')
    var connection = mysql.createConnection({
      host: 'localhost',
      user: 'root',
      password: '',
      database: 'zarodolgozat'

    })   

    connection.connect()

    var feltetel3='anime_tipus LIKE "%'+req.body.bevitel3+'%"';
    connection.query('SELECT * from anime WHERE '+feltetel3, function (err, rows, fields) {

      if (err) throw err

      console.log(rows)

      res.send(rows)

    })

    connection.end()    

  })

//-------------------------------------------------Saját backend Keresés laphoz modalban megjelenítés-----------------------------------------------------------------------
  app.post('/animekomment', (req, res) => {
    var mysql = require('mysql')
    var connection = mysql.createConnection({
      host: 'localhost',
      user: 'root',
      password: '',
      database: 'zarodolgozat'

    })
    
    connection.connect()
   
    connection.query('SELECT * from uzenet where uzenet_tipus_id=' + req.body.bevitel1, function (err, rows, fields) {

      if (err) throw err

      console.log(rows)

      res.send(rows)

    })

    connection.end()    

  })

//-------------------------------------------------Saját backend Anime Trailer-----------------------------------------------------------------------
  app.post('/animelink', (req, res) => {
    var mysql = require('mysql')
    var connection = mysql.createConnection({
      host: 'localhost',  
      user: 'root',
      password: '',
      database: 'zarodolgozat'

    })
  
    connection.connect()
  
    connection.query('SELECT anime_id, anime_link from anime WHERE anime_id='+req.body.bevitel1, function (err, rows, fields) {

      if (err) throw err

      console.log(rows)

      res.send(rows)

    })

    connection.end()

  })

//-------------------------------------------------Saját backend-----------------------------------------------------------------------
  app.get('/animekommentek', (req, res) => {
    var mysql = require('mysql')
    var connection = mysql.createConnection({
      host: 'localhost',  
      user: 'root',
      password: '',
      database: 'zarodolgozat'

    })
  
    connection.connect()
  
    connection.query('SELECT * from uzenet', function (err, rows, fields) {

      if (err) throw err

      console.log(rows)

      res.send(rows)

    })

    connection.end()

  })

  //-------------------------------------------------Saját backend Adminnak törlés-----------------------------------------------------------------------
  app.post('/animetorles', (req, res) => {
    var mysql = require('mysql')
    var connection = mysql.createConnection({
      host: 'localhost',
      user: 'root',
      password: '',
      database: 'zarodolgozat'

    })

    connection.connect()   

    connection.query("delete from anime where anime_id=" + req.body.bevitel6, function (err, rows, fields) {

      if (err) throw err

      console.log(rows)

      res.send(rows)

    })

    connection.end()    

  })

//-------------------------------------------------Saját backend Adminnak törlés-----------------------------------------------------------------------
  app.post('/uzenettorles', (req, res) => {
    var mysql = require('mysql')
    var connection = mysql.createConnection({
      host: 'localhost',
      user: 'root',
      password: '',
      database: 'zarodolgozat'

    })

    connection.connect()

    connection.query("delete from uzenet where uzenet_id=" + req.body.bevitel7, function (err, rows, fields) {
      if (err) throw err

      console.log(rows)

      res.send("Sikeres törlés")
    })

    connection.end()    

  })

//-------------------------------------------------Saját backend Adminnak feltöltés-----------------------------------------------------------------------
  app.post('/animefelvitel', (req, res) => {
    var mysql = require('mysql')
    var connection = mysql.createConnection({
      host: 'localhost',
      user: 'root',
      password: '',
      database: 'zarodolgozat'
    })
    
    connection.connect()
    
    
    connection.query("INSERT INTO anime VALUES (NULL, '"+req.body.bevitel1+"', '"+req.body.bevitel2+"','"+req.body.bevitel3+"','"+req.body.bevitel4+"')", function (err, rows, fields) {
      if (err) throw err
    
      console.log("Sikeres feltoltés!")

      res.send("Sikeres feltoltés!")
    })
    
    connection.end()    

  })

  app.use(fileupload());
  app.post("/upload", (req, res) => {
    const newpath = "./kepek/";
    const file = req.files.file;
    const filename = file.name;
  
    file.mv(`${newpath}${filename}`, (err) => {
      if (err) {
        return res.status(500).send({ message: "File upload failed", code: 200 });
      }
        return res.status(200).send({ message: "File Uploaded", code: 200 });
    });
  });

//-------------------------------------------------Forumhoz felvitel és lekérés-----------------------------------------------------------------------
app.post('/forumuzenetfelvitel', (req, res) => {
  var mysql = require('mysql')
  var connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'zarodolgozat'
  })
  
  connection.connect()
  
  
  connection.query("INSERT INTO forumuzenet VALUES (NULL, '"+req.body.bevitel1+"', '"+req.body.bevitel2+"')", function (err, rows, fields) {
    if (err) throw err
  
    console.log("Sikeres feltoltés!")

    res.send("Sikeres feltoltés!")
  })
  
  connection.end()    

})

app.get('/forumuzik', (req, res) => {
  var mysql = require('mysql')
  var connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'zarodolgozat'
  })
  
  connection.connect()
  
  connection.query('SELECT * from forumuzenet ORDER BY forum_id DESC ', function (err, rows, fields) {
    if (err) throw err
  
    console.log(rows)

    res.send(rows)
  })
  
  connection.end()    

})
  
};  
