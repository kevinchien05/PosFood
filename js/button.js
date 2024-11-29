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

addClick = () => {
    qntDetail.value = parseInt(qntDetail.value) + parseInt(1);
}

minClick = () => {
    if (qntDetail.value > 1) {
        qntDetail.value = parseInt(qntDetail.value) - parseInt(1);
    }
}
