const fs = require('fs');

let base = 1;
let data = '';

for (let i = 1; i <= 10; i++){
    data+=(`${base} * ${i} = ${base * i}\n`);
    
}

fs.writeFile(path = `tabla-${base}.txt`, data, (err) => {
    if(err) throw err;

    console.log(`El archivo ${path} ha sido creada`);
    
})