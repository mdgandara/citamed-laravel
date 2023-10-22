import React from 'react';
import ReactDOM from 'react-dom/client';

function Example2() {
    
    return (
        <div className="container">
            <div className="row justify-content-center">
                <div className="col-md-8">
                    <div className="card">
                        <div className="card-header">Ejemplo de React es chevre </div>

                        <div className="card-body"> Prueba maxima!</div>
                    </div>
                </div>
            </div>
        </div>
    );
}

export default Example2;

if (document.getElementById('root2')) {
    const Index = ReactDOM.createRoot(document.getElementById("root2"));

    Index.render(
        <React.StrictMode>
            <Example2/>
        </React.StrictMode>
    )
}
