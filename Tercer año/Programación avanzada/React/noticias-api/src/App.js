import React, {Component, Fragment} from 'react';
import Header from './Header';
import ListaNoticias from './ListaNoticias';
import Formulario from './Formulario';


class App extends Component {

  state = {
    noticias: []
  }

   componentDidMount() {
    
    this.consultarNoticias();
    
  }

  consultarNoticias = async (categoria='general') => {
    const url = `https://newsapi.org/v2/top-headlines?country=ar&category=${categoria}&apiKey=0911245c208546678c463c6f1271d4aa`
    
    const respuesta = await fetch(url);
    const noticias = await respuesta.json();

    console.log(noticias.articles);

    this.setState({
      noticias : noticias.articles
    })

    

  }

  render() {
  return (
      <Fragment>
        <Header 
          titulo = 'Noticias React Api'
          />

          <div className="container white contenedor-noticias">
            <Formulario
            consultarNoticias={this.consultarNoticias}
            />
          </div>
        
        <div>
           <ListaNoticias
            noticias={this.state.noticias}
           />
        </div>
       
      </Fragment>
  );
}

}

export default App;
