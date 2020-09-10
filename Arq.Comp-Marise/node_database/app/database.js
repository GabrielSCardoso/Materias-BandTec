var mysql = require('mysql');
var connection = mysql.createConnection({
    host: 'localhost',
    port: '3306',
    user: 'cardoso',
    password: 'amigofiel1131017',
    database: 'locacao'
});

connection.connect(function (err) {
    if (err) throw err;
    console.log('Conectado com sucesso!')
});



module.exports = connection;