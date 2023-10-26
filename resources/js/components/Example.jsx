import React, { useState, useEffect } from "react";
import createRoot from "react-dom/client";


function MyComponent() {
  const [usuarios, setUsuarios] = useState([]);

  useEffect(() => {
    const fetchData = async () => {
      const response = await fetch("/");
      const data = await response.json();

      setUsuarios(data.usuarios);
    };

    fetchData();
  }, []);

  return (
    <div>
      {usuarios.map((usuario) => (
        <h1>{usuario.name}</h1>
      ))}
    </div>
  );
}

const Index = createRoot(document.getElementById("root"));

Index.render(
  <React.StrictMode>
    <MyComponent />
  </React.StrictMode>
);
