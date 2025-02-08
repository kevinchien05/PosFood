const toggleButton = document.getElementById('btnMenu');
const offcanvasElement = document.getElementById('sidebar');

// Event listener for when offcanvas is shown
offcanvasElement.addEventListener('shown.bs.offcanvas', () => {
    toggleButton.style.display = 'none';
});

// Event listener for when offcanvas is hidden
offcanvasElement.addEventListener('hidden.bs.offcanvas', () => {
    toggleButton.style.display = 'block';
});

const qntDetail = document.getElementById("qtyDetail");

let holdInterval;
const holdDelay = 100; // Adjust the speed of increment/decrement (milliseconds)

function startHold(action) {
    holdInterval = setInterval(action, holdDelay);
}

function stopHold() {
    clearInterval(holdInterval);
}

addClick = () => {
    qntDetail.value = parseInt(qntDetail.value) + parseInt(1);
}

minClick = () => {
    if (qntDetail.value > 1) {
        qntDetail.value = parseInt(qntDetail.value) - parseInt(1);
    }
}

change = (page) => {
    window.location = `${page}`;
}

