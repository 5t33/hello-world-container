import express from "express";

const app = express();

app.get('/', function (req, res) {
  res.status(200).send('Hello World')
})
 
console.log("App listening on port 3001")
app.listen(3001);