import React from 'react';

function Example3() {
    const changeLanguage = (newLang) => {
        // Realiza una solicitud al servidor para cambiar el idioma
        fetch('/cambiar-idioma', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json',
                'X-CSRF-TOKEN': csrfToken, // Asegúrate de obtener el token CSRF de tu vista Blade
            },
            body: JSON.stringify({ lang: newLang }),
        }).then(response => {
            if (response.ok) {
                // Recarga la página para aplicar el cambio de idioma
                window.location.reload();
            }
        });
    };

    return (
        <div>
            <button onClick={() => changeLanguage('es')}>Español</button>
            <button onClick={() => changeLanguage('en')}>English</button>
        </div>
    );
}

export default Example3;
