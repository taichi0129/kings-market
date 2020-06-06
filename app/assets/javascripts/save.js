
// window.draw_graph = -> 
//     ctx = document.getElementById("myChart").getContext('2d')
//     myChart = new Chart(ctx, {
//         type: 'bar',
//         data: {
//             labels: ["Red", "Blue", "Yellow", "Green", "Purple", "Orange"],
//             datasets: [{
//                 label: '# of Votes',
//                 data: [12, 19, 3, 5, 2, 3],
//                 backgroundColor: [
//                     'rgba(255, 99, 132, 0.2)',
//                     'rgba(54, 162, 235, 0.2)',
//                     'rgba(255, 206, 86, 0.2)',
//                     'rgba(75, 192, 192, 0.2)',
//                     'rgba(153, 102, 255, 0.2)',
//                     'rgba(255, 159, 64, 0.2)'
//                 ],
//                 borderColor: [
//                     'rgba(255,99,132,1)',
//                     'rgba(54, 162, 235, 1)',
//                     'rgba(255, 206, 86, 1)',
//                     'rgba(75, 192, 192, 1)',
//                     'rgba(153, 102, 255, 1)',
//                     'rgba(255, 159, 64, 1)'
//                 ],
//                 borderWidth: 1
//             }]
//         },
//         options: {
//             scales: {
//                 yAxes: [{
//                     ticks: {
//                         beginAtZero:true
//                     }
//                 }]
//             }
//         }
//     })


// window.draw_graph = -> 
//     let ctx = document.getElementById("myRaderChart");
//     let myRadarChart = new Chart(ctx, {
//         type: 'radar', 
//         data: { 
//             labels: ["英語", "数学", "国語", "理科", "社会"],
//             datasets: [{
//                 label: 'Aさん',
//                 data: [92, 72, 86, 74, 86],
//                 backgroundColor: 'RGBA(225,95,150, 0.5)',
//                 borderColor: 'RGBA(225,95,150, 1)',
//                 borderWidth: 1,
//                 pointBackgroundColor: 'RGB(46,106,177)'
//             }, {
//                 label: 'Bさん',
//                 data: [73, 95, 80, 87, 79],
//                 backgroundColor: 'RGBA(115,255,25, 0.5)',
//                 borderColor: 'RGBA(115,255,25, 1)',
//                 borderWidth: 1,
//                 pointBackgroundColor: 'RGB(46,106,177)'
//             }]
//         },
//         options: {
//             title: {
//                 display: true,
//                 text: '試験成績'
//             },
//             scale:{
//                 ticks:{
//                     suggestedMin: 0,
//                     suggestedMax: 100,
//                     stepSize: 10,
//                     callback: function(value, index, values){
//                         return  value +  '点'
//                     }
//                 }
//             }
//         }
//     });


// window.draw_graph = -> 
//     ctx = document.getElementById("myChart").getContext('2d')
//     myChart = new Chart(ctx, {
//         type: 'rader',
//         data: {
//             labels: ["赤", "Blue", "Yellow", "Green", "Purple", "Orange"],
//             datasets: [{
//                 label: '# of Votes',
//                 data: [12, 19, 3, 5, 2, 3],
//                 fill: true,
//                 backgroundColor: 'rgba(255, 99, 132, 0.2)'
//                 borderColor: 'rgb(255, 99, 132)'
//                 pointBackgroundColor: 'rgb(255, 99, 132)'
//                 pointBorderColor: '#fff'
//                 pointHoverBackgroundColor: '#fff'
//                 pointHoverBorderColor: 'rgb(255, 99, 132)'
//             }]
//         },
//         options: {
//             elements: {
//                 line: {
//                     tension: 0,
//                     borderWidth: 3
//                 }
//             }
//         }
//     });
