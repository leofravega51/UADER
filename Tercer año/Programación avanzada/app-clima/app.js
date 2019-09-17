const axios = require('axios');

const argv = require('yargs').option({
    direction: {
        alias: 'd',
        descripcion: 'Direccion de la ciudad',
        demand: true
    }
}).argv



const encodeUrl = encodeURI(argv.direction);

    
