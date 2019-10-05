//agregar el return y mover el codigo a lugar
const axios = require("axios")

const lugar = require('/home/leandro/Repositorios/UADER/Tercer año/Programación avanzada/app-clima/lugar/lugar.js')
const clima = require('/home/leandro/Repositorios/UADER/Tercer año/Programación avanzada/app-clima/clima/clima.js')
    ///

const argv = require('yargs').options({
        direccion: {
            alias: 'd',
            descripcion: 'Direccion de la ciudad para obtener el clima: ',
            demand: true,
        }
    }).argv
    ///
    //console.log(argv.direccion)

const encodeUlr = encodeURI(argv.direccion)

let getInfo = async (direccion) => {

    try {
        
        let coords = await lugar.getLugarLatLng(direccion);
        let temp = await clima.getClima(coords.lat, coords.lng);

        return `El clima en ${coords.direccion} es de ${temp}`;
    } catch (e) {
        return `No se puede determinar el clima en ${direccion}`
    }

}

getInfo(argv.direccion)
    .then(mensaje => console.log(mensaje))
    .catch(e => console.log(e));