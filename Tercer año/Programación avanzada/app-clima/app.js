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

const getInfo = (direccion) => {

}

clima.getClima('-31.389999', '-58.029999')
    .then(console.log)
    .catch(console.log)

console.log(encodeUlr);

lugar.getLugarLatLng(argv.direccion)
    .then(console.log)