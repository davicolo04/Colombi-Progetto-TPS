const express = require('express');
const mysql = require('mysql');

const app = express();

app.use((req, res, next) => {
  res.setHeader('Access-Control-Allow-Origin', '*'); // richieste da qualsiasi origine
  res.setHeader('Access-Control-Allow-Methods', 'GET, POST, PUT, DELETE'); // metodi consentiti
  res.setHeader('Access-Control-Allow-Headers', 'Content-Type'); // header consentiti
  next();
});

app.use(express.json());

const connection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: '',
  database: 'coins'
});

connection.connect((err) => {
  if (err) {
    console.error('Connection to database unsuccessful: ', err);
    return;
  }
  console.log('Connection to database successful!');
});


// GET --> /catalog

app.get('/catalog', (req, res) => {
  connection.query('SELECT * FROM coin_data', (err, result) => {
    if (err) {
      console.error('Errore nella query del database: ', err);
      res.status(500).send('Errore del server');
    }

    // console.log(result);
    // res.send(result);
    res.send(generateCatalogTable(result));
  });
});

function generateCatalogTable(coins) {
  let table = `
    <table class="min-w-full divide-y divide-gray-700">
      <thead class="bg-gray-800">
        <tr>
          <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Country Name</th>
          <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Denomination</th>
          <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Year</th>
          <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Subject</th>
          <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Currency</th>
          <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Price</th>
          <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider"></th>
        </tr>
      </thead>
      <tbody class="bg-gray-700 divide-y divide-gray-600">
  `;
  coins.forEach((coin) => {
    table += `
      <tr>
        <td class="px-6 py-4 whitespace-nowrap">${coin.countryName}</td>
        <td class="px-6 py-4 whitespace-nowrap">${coin.denomination}</td>
        <td class="px-6 py-4 whitespace-nowrap">${coin.year}</td>
        <td class="px-6 py-4 whitespace-nowrap">${coin.subject}</td>
        <td class="px-6 py-4 whitespace-nowrap">${coin.currency}</td>
        <td class="px-6 py-4 whitespace-nowrap">${coin.price}</td>
        <td class="px-6 py-4 whitespace-nowrap"><button class="btnCatAdd" data-id="${coin.idCoin}" onclick="addToCollection(${coin.idCoin})" class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded-full hover:bg-blue-600">Add</button></td>
      </tr>
    `;
  });

  table += '</tbody></table>';
  return table;
}


// GET --> /collection

app.get('/collection', (req, res) => {
  let queryCollection = "select coin_data.*, coin_user.quantity from coin_data inner join coin_user on coin_data.idCoin = coin_user.idCoin where coin_user.idUser = 0;";
  connection.query(queryCollection, (err, result) => {
    if (err) {
      console.error('Errore nella query del database: ', err);
      res.status(500).send('Errore del server');
    }
    res.send(generateCollectionTable(result));
  })
});

function generateCollectionTable(coins) {
  let table = `
    <table class="min-w-full divide-y divide-gray-700">
      <thead class="bg-gray-800">
        <tr>
          <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Country Name</th>
          <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Denomination</th>
          <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Year</th>
          <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Subject</th>
          <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Currency</th>
          <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Price</th>
          <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Quantity</th>
        </tr>
      </thead>
      <tbody class="bg-gray-700 divide-y divide-gray-600">
  `;
  coins.forEach((coin) => {
    table += `
      <tr>
        <td class="px-6 py-4 whitespace-nowrap">${coin.countryName}</td>
        <td class="px-6 py-4 whitespace-nowrap">${coin.denomination}</td>
        <td class="px-6 py-4 whitespace-nowrap">${coin.year}</td>
        <td class="px-6 py-4 whitespace-nowrap">${coin.subject}</td>
        <td class="px-6 py-4 whitespace-nowrap">${coin.currency}</td>
        <td class="px-6 py-4 whitespace-nowrap">${coin.price}</td>
        <td class="px-6 py-4 whitespace-nowrap">${coin.quantity}</td>
      </tr>
    `;
  });
  table += '</tbody></table>';
  return table;
}


// INSEERT COIN

app.post('/coins', (req, res) => {
  const idCoin = req.body.idCoin;

  const query = 'INSERT INTO coin_user (idUser, idCoin, quantity) VALUES (0, ?, 1)';
  connection.query(query, [idCoin], (err, results) => {
    if (err) {
      console.error('Errore nell\'esecuzione della query di inserimento:', err);
      res.status(500).send('Errore nell\'esecuzione della query di inserimento');
      return;
    }
    res.json({
      message: 'Coin added to collection',
      idCoin: idCoin
    });
  });
});


// USERS

app.get('/users', (req, res) => {
  let queryUser = "SELECT name, surname FROM user";
  connection.query(queryUser, (err, result) => {
    if (err) {
      console.error('Errore nella query del database: ', err);
      res.status(500).send('Errore del server');
    }
    res.send(generateUsersLabel(result));
  })
});

function generateUsersLabel(user) {
  let par = ``;
  user.forEach((user) => {
    par += `
    <p class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider text-1xl font-bold mb-4">Name: ${user.name}</p>
    <p class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider text-1xl font-bold mb-4">Surname: ${user.surname}</p>`
      ;
  });

  return par;
}

app.listen(3000, () => {
  console.log('Server listening on port 3000');
});