import React from 'react'
import Artista from './Artista';


const ListaArtistas = ({artistas}) => (
    
    <div className="lista-artistas">
      {artistas.map(artista => (        
        <Artista
          artista = {artista}
        />
      ))}
    </div>
)

export default ListaArtistas;