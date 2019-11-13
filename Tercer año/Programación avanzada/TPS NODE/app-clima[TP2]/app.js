const lugar = require('./lugar/lugar');
const clima = require('./clima/clima');
const fs = require('fs');

let weather_data;

const argv = require('yargs').options({
        direccion: {
            alias: 'd',
            descripcion: 'Direccion de la ciudad para obtener el clima: ',
            demand: true,
        }
    }).argv

    //console.log(argv.direccion)


let getInfo = async (direccion, weather) => {

    try {
        
        coords = await lugar.getLugarLatLng(direccion);
        weather_data = await clima.getClima(coords.lat, coords.lng);

        let data = `Localidad : ${argv.direccion}, Temperatura : ${weather_data.temperatura}, Presion : ${weather_data.presion}, Humedad : ${weather_data.humedad} \n`;


        fs.appendFile(path = `database.txt`, data, (err) => {
            if(err) throw err;
        })


        return `El clima en ${coords.direccion} es de ${weather_data.temperatura}, la presion  de ${weather_data.presion} y la humedad ${weather_data.humedad}`;
    } catch (e) {
        return `No se puede determinar el clima en ${direccion}`
    }

}

getInfo(argv.direccion)
    .then(mensaje => console.log(mensaje))
    .catch(e => console.log(e));