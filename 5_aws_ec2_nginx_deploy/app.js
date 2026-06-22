const express = require("express");
const app = express();

app.get("/", (req, res) => {
  res.send("Hello from React app 5. AWS EC2 launcher");
});

app.listen(3000, () => {
  console.log("Server running on port 3000");
});
