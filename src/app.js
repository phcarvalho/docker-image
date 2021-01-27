const express = require('express')

const app = express();

app.get('/', (req, res) => {
  res.send(`Hello ${process.env.NAME} - ${process.env.SECRET_TEST} - ${process.env.SECRET}!`)
});

app.listen(3000, () => {
  console.log('Server listening at http://localhost:3000')
})