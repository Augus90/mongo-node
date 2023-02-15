const express = require('express');

const app = express();

const port = 3000;

require('./database');

app.use(require('./routes/index.routes'));

app.listen(port);
console.log('Server on port', port);

