'use strict'

console.log('Temporary hack for cleaning up download links');

const fs = require('fs');

const lines = fs.readFileSync('./all.txt', 'utf8').split('\n');
let newLines = [];
let parts;

for (let line of lines) {
	if (line.trim() === '') continue 
	parts = line.split('href=')
	//console.log(parts)
	parts = parts[1].split('">')
	newLines.push(parts[0].replace('"./', '').replace('"', ''))
}

fs.writeFileSync('./clean.txt', newLines.join('\n'), 'utf8');
