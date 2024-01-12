const express = require("express");
const morgan = require('morgan');
const app = express();
const port = +process.env.NODE_PORT || 3000;

app.use(morgan("tiny"));


app.use(express.static("build"));

app.listen(port, () => {
  console.log(`Server is running at http://localhost:${port}`);
});
