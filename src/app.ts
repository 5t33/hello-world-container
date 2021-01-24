import express from "express";

const stage = process.env.NODE_ENV || "node env not provided "
const version = process.env.VERSION || "version not provided "

const app = express();

app.get('/hello_world', function (req, res) {
  res.status(200).send(`Hello World: ${stage}\n version: ${version}\n`)
});

app.get('/health_check', function (req, res) {
  res.status(200).send('OK')
});
 
console.log("App listening on port 3001")
app.listen(3001);
