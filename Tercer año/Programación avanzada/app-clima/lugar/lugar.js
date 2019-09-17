const instance = axios.create({

    baseURL:`https://devru-latitude-longitude-find-v1.p.rapidapi.com/latlon.php?location=${encodeUrl}` ,
    headers: {"x-rapidapi-key":"4c5d9a7485mshc2efc78f5bb962cp17717cjsnc4679932c05e"}
})

const resp = await instance.get();

if(resp.data.Result.length === 0){
    throw new Error(`No hay resultados para ${dir}`)
}

let geoLocalizacion = {
    lat: '',
    long: ''
}

instance.get()
.then( resp => {
    geoLocalizacion.lat = resp.data[0].lat;
    geoLocalizacion.long = resp.data[0].long;
    
})

    .catch(err => {
        console.log('ERROR!!', err);
        
    });
