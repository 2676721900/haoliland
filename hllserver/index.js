const express = require("express");
const bodyParser = require("body-parser")
const app = express();
app.use(bodyParser.urlencoded({ extended: true }));
//content-type application/json
app.use(bodyParser.json());
app.listen(81, () => {
    console.log("server started on 81")
})