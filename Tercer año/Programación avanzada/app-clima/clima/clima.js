const axios = require('axios')

const getClima = async () => {
    
    const resp = await axios.get(`DIRECCION DE LA PAGINA`)

    return resp.data.main.temp;
}


module.exports = {
    getClima
}