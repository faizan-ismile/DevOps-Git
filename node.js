// node.js
const mysql = require('mysql');

const connection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: 'yourpassword'
});

connection.connect(err => {
  if (err) throw err;
  console.log('Connected!');
  connection.query('CREATE DATABASE IF NOT EXISTS mydb', (err, result) => {
    if (err) throw err;
    console.log('Database created or already exists');
    connection.end();
  });
});
