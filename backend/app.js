const express = require("express");
const app = express();

app.get("/", (req, res) => {
  res.send("Hello from backend");
});

app.get("/metrics", (req, res) => {
  res.set("Content-Type", "text/plain");
  res.send("app_requests_total 100");
});

app.listen(3000, () => console.log("Backend running"));
