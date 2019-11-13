import React from 'react'

const Genero = ({generos}) => {

    // extraer los datos
    const {name, content} = generos;

    // condicionalmente cargar la imangen si esta disponible
    
    return (
        <div className="col s12 m6 l4">
            <div className="card">
                <div className="card-image">
                      <img src={urlToImage} alt={title}/>
                </div> 

                 <div className="card-content">
                    <h3>{title}</h3>
                    <p>{description}</p>
                </div>
            </div>

           
        </div>
    )
    }

export default Genero;