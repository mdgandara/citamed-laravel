import React from "react";

const Usuarios = (props) => {
  const { usuarios } = props;

  return (
    <div>
      <h3 className="col-md-12 row justify-content-center">
        LISTADO DE USUARIOS REGISTRADOS
      </h3>
      <table className="table table-striped table-bordered table-hover">
        <thead className="thead-dark">
          <tr>
            <th scope="col">Nombre</th>
            <th scope="col">Apellido</th>
            <th scope="col">Documento ID</th>
            <th scope="col">Email</th>
          </tr>
        </thead>
        <tbody>
          {usuarios.map((usuario) => (
            <tr key={usuario.id}>
              <td>{usuario.name}</td>
              <td>{usuario.surname}</td>
              <td>{usuario.documentoId}</td>
              <td>{usuario.email}</td>
            </tr>
          ))}
        </tbody>
      </table>
    </div>
  );
};

export default Usuarios;


if (document.getElementById('root3')) {
    const Index = ReactDOM.createRoot(document.getElementById("root3"));

    Index.render(
        <React.StrictMode>
            <Usuarios />
        </React.StrictMode>
    )
}
