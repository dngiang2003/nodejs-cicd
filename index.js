require("dotenv").config()

const express = require("express")
const app = express()

const port = process.env.PORT || 3000

app.get("/", (req, res) => {
  res.send("Hello World hẹ hẹ")
})

app.listen(port, () => {
  console.log("Listening on port 3000")
})
