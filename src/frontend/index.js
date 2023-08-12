const express = require("express");
const path = require("path");

const app = express();

// Serve the static files from the React app
app.use(express.static(path.join(__dirname, "build")));

// Define your API routes here

// Handle other routes and send the React app
app.get("*", (req, res) => {
  res.sendFile(path.join(__dirname, "build", "index.html"));
});

// Start the Express server

module.exports = app