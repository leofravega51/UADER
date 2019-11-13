
import React, { Component } from 'react';

class Formulario extends Component {

    state= {
        categoria:'general'
    }

    cambiarCategoria = e => {
        this.setState({
            categoria: e.target.value
        }, () =>{
             // PASARLO A LA PAGINA PRINCIPAL pra la consulta
        this.props.consultarNoticias(this.state.categoria)
        })

       
    }

    render() {
        return (
            <div className="buscador row">
                <div className="col s12 m8 offset-2">
                    <form>
                        <h2>Encuentre Noticias por Categoría</h2>

                        <div className="input-field col s12 m8">
                            <select
                             onChange={this.cambiarCategoria}
                            >
                               
                                <option value="general">General</option>
                                <option value="busines">Negocios</option>
                                <option value="entertainment">Entretenimiento</option>
                                <option value="health">Salud</option>
                                <option value="tecnologhy">Tecnología</option>

                            </select>
                        </div>
                    </form>
                </div>
                
            </div>
        );
    }
}

export default Formulario;