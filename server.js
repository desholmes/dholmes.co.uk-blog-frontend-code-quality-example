const path = require("path");
const express = require("express");

const port = process.env.PORT || 5000;

const app = express();

app.use(express.static(`${__dirname}/dist`));
app.set("etag", false);

app.get("/*", (req, res) => {
  res.sendFile(path.join(__dirname, `dist/index.html`), {});
});

app.listen(port, "0.0.0.0", (err) => {
  if (err) {
    console.error(err);
  }
  console.info(
    `===> Web App HTTP server listening on port ${port}
    Open up http://0.0.0.0:${port} in your browser.`
  );
});
