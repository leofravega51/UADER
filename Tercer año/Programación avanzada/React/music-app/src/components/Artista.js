import React from 'react'

const Artista = ({artista}) => {

    // extraer los datos
    const {name, playcount} = artista;
    const {text} = artista.image[0];



    // condicionalmente cargar la imangen si esta disponible
    
    return (
        <div className="col s12 m6 l4">
            <div className="card">
                <div className="card-content">
                    <img src={text} alt='fotitoooo'></img>
                    <h3>{name}</h3>
                    <p>{playcount}</p>
                </div>
            </div>

           
        </div>
    )
    }

export default Artista;