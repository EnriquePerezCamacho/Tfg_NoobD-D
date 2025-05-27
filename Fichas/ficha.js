const clases = {
    "Bárbaro": ["Berserker", "Totémico"],
    "Bardo": ["Colegio del Saber", "Colegio del Valor"],
    "Clérigo": ["Dominio de la Vida", "Dominio de la Guerra"],
    "Druida": ["Círculo de la Tierra", "Círculo de la Luna"],
    "Guerrero": ["Campeón", "Maestro de Batalla"],
    "Mago": ["Evocación", "Ilusión"],
    "Paladín": ["Juramento de Devoción", "Juramento de Venganza"],
    "Pícaro": ["Ladrón", "Asesino"],
    "Hechicero": ["Linaje Dracónico", "Magia Salvaje"],
    "Brujo": ["Patrón Infernal", "Patrón del Archifey"],
    "Monje": ["Camino de las Sombras", "Camino del Puño"]
};

const razas = {
    "Humano": [],
    "Elfo": ["Alto Elfo", "Elfo de los Bosques", "Drow"],
    "Enano": ["De las Colinas", "De las Montañas"],
    "Mediano": ["Piesligeros", "Fuertes"],
    "Gnomo": ["Del Bosque", "De las Rocas"],
    "Dracónido": [],
    "Semielfo": [],
    "Semiorco": [],
    "Tiflin": []
};

function cargarSubclases() {
    const clase = document.getElementById("clase").value;
    cargarOpciones("subclase", clases[clase] || []);
}

function cargarSubrazas() {
    const raza = document.getElementById("raza").value;
    cargarOpciones("subraza", razas[raza] || []);
}

function cargarOpciones(selectId, opciones) {
    const select = document.getElementById(selectId);
    select.innerHTML = "";
    for (let opcion of opciones) {
        const opt = document.createElement("option");
        opt.value = opcion;
        opt.textContent = opcion;
        select.appendChild(opt);
    }
}

function actualizarModificador(atributo) {
    const puntuacion = parseInt(document.getElementById(atributo).value);
    const modificadorElement = document.getElementById('mod_' + atributo);
    if (!isNaN(puntuacion)) {
        const modificador = Math.floor((puntuacion - 10) / 2);
        modificadorElement.innerText = 'Modificador: ' + (modificador >= 0 ? '+' : '') + modificador;
    } else {
        modificadorElement.innerText = 'Modificador: +0';
    }
}

function guardarComoPDF() {
    const element = document.getElementById('ficha-container');

    const opt = {
        margin: 10,
        filename: 'ficha_dnd.pdf',
        image: { type: 'jpeg', quality: 0.98 },
        html2canvas: {
            scale: 2,
            logging: true,
            useCORS: true
        },
        jsPDF: {
            unit: 'mm',
            format: 'a4',
            orientation: 'portrait'
        }
    };

    const btn = document.querySelector('button[onclick="guardarComoPDF()"]');
    const originalText = btn.textContent;
    btn.textContent = 'Generando PDF...';
    btn.disabled = true;

    html2pdf().set(opt).from(element).save().finally(() => {
        btn.textContent = originalText;
        btn.disabled = false;
    });
}

window.onload = () => {
    cargarOpciones("clase", Object.keys(clases));
    cargarOpciones("raza", Object.keys(razas));
    cargarSubclases();
    cargarSubrazas();
    window.guardarComoPDF = guardarComoPDF;
};
