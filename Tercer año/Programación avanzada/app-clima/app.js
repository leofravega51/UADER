const axios = require('axios');

const argv = require('yargs').option({
    direction: {
        alias: 'd',
        descripcion: 'Direccion de la ciudad',
        demand: true
    }
}).argv



const encodeUrl = encodeURI(argv.direction);


const instance = axios.create({

    baseURL:`https://devru-latitude-longitude-find-v1.p.rapidapi.com/latlon.php?location=${encodeUrl}` ,
    headers: {"x-rapidapi-key":"4c5d9a7485mshc2efc78f5bb962cp17717cjsnc4679932c05e"}
})

instance.get()
.then( resp => {
    console.log(resp.data);
    
})

    .catch(err => {
        console.log('ERROR!!', err);
        
    });

