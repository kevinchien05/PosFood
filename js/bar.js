var ctx = document.getElementById('myBarChart').getContext('2d');
    var myBarChart = new Chart(ctx, {
        type: 'bar', // Bar Chart Type
        data: {
            labels: ['9', '10', '11', '12', '13', '14'], // Categories
            datasets: [{
                label: 'Category Values',
                data: [12, 19, 7, 15, 10, 14], // Values for each category
                backgroundColor: [
                    'red', 'blue', 'green', 'yellow', 'purple', 'orange'
                ],
                borderColor: 'white',
                borderWidth: 1
            }]
        },
        options: {
            scales: {
                y: {
                    beginAtZero: true // Ensures bars start from zero
                }
            },
            plugins: {
                legend: {
                    display: true, // Show legend
                    position: 'top'
                }
            }
        }
    });