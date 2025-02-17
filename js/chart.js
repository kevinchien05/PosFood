var ctx = document.getElementById('myPieChart').getContext('2d');
var myPieChart = new Chart(ctx, {
    type: 'pie',
    data: {
        labels: ['Main Course', 'Snack', 'Dessert', 'Appetizer', 'Drinks'],
        datasets: [{
            data: [30, 10, 15, 25, 20], // Values in percentage
            backgroundColor: ['red', 'blue', 'green', 'yellow', 'orange']
        }]
    },
    options: {
        plugins: {
            legend: {
                display: true,
                position: 'right'  // Moves legend to the right
            }
        }
    }
});
