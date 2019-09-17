const axios = require('axios')

//API KEY: f6bec82f24f252fe9df8bb82a085080b

const getClima = async(lat, lng) => {
    const resp = await axios.get(`https://api.openweathermap.org/data/2.5/weather?lat=${ lat }&lon=${ lng }&appid=f6bec82f24f252fe9df8bb82a085080b&units=metrica`)

    return resp.data.main.temp

}

module.exports = {
    getClima
}