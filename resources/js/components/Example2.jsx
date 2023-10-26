import React, { useState } from 'react';

import ReactDOM from 'react-dom/client';



function Example2() {
    

    return (   'Hola Example 2'  );
}

export default Example2;

if (document.getElementById('root5')) {
    const Index = ReactDOM.createRoot(document.getElementById("root5"));

    Index.render(
        <React.StrictMode>
            <Example2 />
        </React.StrictMode>
    )
}
