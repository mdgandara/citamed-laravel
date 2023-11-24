import React, { useState } from "react";

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

export default MyComponent;
