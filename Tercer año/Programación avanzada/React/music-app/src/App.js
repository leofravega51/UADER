import React, {Component, Fragment} from 'react';
import Header from './components/Header';
import { BrowserRouter as Router, Route, Switch} from 'react-router-dom';
import Artista from './components/Artista';
import ListaArtistas from './components/ListaArtistas'
// import Formulario from './Formulario';

class App extends Component {
  
  state = {
    artistas:[]
  
  }

  componentDidMount() {
    this.consultarArtistas();

    
  }
  
  consultarArtistas = async(tipo) => {

    const apikey = `84bd9d2ec4d3e1c0f68faa7d56c9ac90`;
    const url = `http://ws.audioscrobbler.com/2.0/?method=chart.gettopartists&api_key=${apikey}&format=json`;
    
    const respuesta = await fetch(url);
    const lista_artistas = await respuesta.json();
    let listado = lista_artistas.artists.artist

    // console.log(listado);
    


    this.setState({
      artistas : listado
    })


    console.log(this.state.artistas);
    

    
    
  }



  render() {
    return (
      <div className="App">
      <Fragment>
        <Router>
          <Header />
          <ListaArtistas 
            artistas = {this.state.artistas}
          />
        </Router>
      </Fragment>
        

      
      
    </div>
    );
  }
}

export default App;
