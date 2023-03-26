const express = require('express');

const app = express();

app.get('/', (req, res) => {
	console.log('був отриманий запит');
	res.send('Hello world!!!');
});

app.listen(80);

