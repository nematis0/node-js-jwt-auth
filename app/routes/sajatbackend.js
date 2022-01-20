const { authJwt } = require("../middleware");
const controller = require("../controllers/user.controller");

module.exports = function(app) {
  app.use(function(req, res, next) {
    res.header(
      "Access-Control-Allow-Headers",
      "x-access-token, Origin, Content-Type, Accept"
    );
    next();
  });
  //-------------------------------------------------Saját backend végpontok-----------------------------------------------------------------------
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
  
};  
