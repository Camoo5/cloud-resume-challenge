window.addEventListener('DOMContentLoaded', (event) =>{
    getVisitCount();
})

const functionApi = 'http://localhost:7071/api/GetVisitorCounter';

function getVisitCount() {
    let count = 30;
    fetch('http://localhost:7071/api/GetVisitorCounter').then(response => {
        return response.json();
    }).then(response => {
        console.log("Website called function API.");
        count = response.count;
        document.getElementById("counter").innerText = count;
    }).catch(function (error) {
        console.log(error);
    });
    return count;

}