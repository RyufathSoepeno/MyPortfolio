/**
 * Chart Initialization Component
 * Handles Chart.js initialization and updates for AKIP
 */

class AKIPChart {
    constructor() {
        this.chartInstance = null;
    }

    /**
     * Update chart with data
     * @param {Array} data - Array of data objects with nama and jumlah_instansi
     */
    updateChart(data) {
        if (data && data.length > 0) {
            const labels = data.map(item => item.nama);
            const chartData = data.map(item => item.jumlah_instansi);
            
            // Update total count
            $('#total-anggota').text(data.length);
            
            // Destroy existing chart if it exists
            if (this.chartInstance) {
                this.chartInstance.destroy();
            }
            
            // Create new chart
            const ctx = document.getElementById('chart-instansi').getContext('2d');
            this.chartInstance = new Chart(ctx, {
                type: 'bar',
                data: {
                    labels: labels,
                    datasets: [{
                        label: 'Jumlah Instansi',
                        data: chartData,
                        backgroundColor: 'rgba(59, 130, 246, 0.6)',
                        borderColor: 'rgba(59, 130, 246, 1)',
                        borderWidth: 1
                    }]
                },
                options: {
                    indexAxis: 'y',
                    responsive: true,
                    maintainAspectRatio: false,
                    plugins: {
                        legend: {
                            display: false
                        },
                        tooltip: {
                            callbacks: {
                                label: function(context) {
                                    return context.parsed.x + ' instansi';
                                }
                            }
                        }
                    },
                    scales: {
                        x: {
                            beginAtZero: true,
                            ticks: {
                                stepSize: 1
                            }
                        },
                        y: {
                            ticks: {
                                maxRotation: 0,
                                minRotation: 0,
                                font: {
                                    size: 10
                                },
                                callback: function(value, index, values) {
                                    // Truncate long names to fit better
                                    const label = this.getLabelForValue(value);
                                    return label.length > 20 ? label.substring(0, 20) + '...' : label;
                                }
                            }
                        }
                    },
                    layout: {
                        padding: {
                            left: 10,
                            right: 10,
                            top: 10,
                            bottom: 10
                        }
                    }
                }
            });
        } else {
            // No data - show empty state
            $('#total-anggota').text('0');
            if (this.chartInstance) {
                this.chartInstance.destroy();
                this.chartInstance = null;
            }
            
            // Show message in chart container
            $('#chart-container').html('<div class="flex items-center justify-center h-full text-gray-500">Tidak ada data anggota tim</div>');
        }
    }

    /**
     * Destroy chart instance
     */
    destroy() {
        if (this.chartInstance) {
            this.chartInstance.destroy();
            this.chartInstance = null;
        }
    }
}

// Global instance
window.AKIPChart = AKIPChart;
