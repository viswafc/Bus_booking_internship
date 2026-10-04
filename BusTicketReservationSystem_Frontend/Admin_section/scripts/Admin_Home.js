let uuid=JSON.parse(localStorage.getItem("uuid")) || "";
console.log(uuid)
let baseURL = `http://localhost:8088`;
let buses = 0;
let users = 0;
let routes =0;
let resid=document.getElementById("res-id");
//Calling fetch method with Urls
fetchData("Bus/viewAllBus")
fetchData("user/viewall")
fetchData("route/viewall")
showResvereation()
showFeedback()
google.charts.load('current', { 'packages': ['corechart'] });
google.charts.setOnLoadCallback(() => {
    setTimeout(() => {
        showGraph();
    }, 2000);
});
//fetching data  this method
function fetchData(Query) {
   
    fetch(`${baseURL}/${Query}?key=${uuid}`)
        .then((Response) => {
            return Response.json()
        })
        .then((data) => {
            let count = Array.isArray(data) ? data.length : 0;
            Query == "Bus/viewAllBus" ? buses = count :Query == "user/viewall" ? users = count :routes = count;
        })
        .catch((error) => {
            Query == "Bus/viewAllBus" ? buses = 0 :Query == "user/viewall" ? users = 0 :routes = 0;
        });

}
//This function show  data on graph 
function showGraph() {
    function drawChart() {
        var data = google.visualization.arrayToDataTable([
            ['Contry', 'Mhl'],
            ['Buses',buses ],
            ['Users',users ],
            ['Routes',routes ]
        ]);

        var options = {
            title: 'Company Growth Chart',
           // is3D: true
        };

        var chart = new google.visualization.BarChart(document.getElementById('myChart'));
        chart.draw(data, options);
    }
    drawChart();
}
// let logout=document.getElementById("out")
// let log=document.getElementById("logout");
// log.addEventListener("click",()=>{
//     logout.style.display = "inline"
//     setTimeout(() => {
//         logout.style.display = "none";
//         window.open("./index.html")
//     }, 2000)
// })

//logout function
document.addEventListener("DOMContentLoaded", function () {
    // Add event listener to the "Logout" link
    var logoutLink = document.getElementById("logout");
    logoutLink.addEventListener("click", function (event) {
      event.preventDefault(); // Prevent the default link behavior
      Swal.fire({
        title: "Logout Confirmation",
        text: "Are you sure you want to logout?",
        icon: "warning",
        showCancelButton: true,
        confirmButtonText: "Logout",
        cancelButtonText: "Cancel",
        confirmButtonColor: "#d33",
        cancelButtonColor: "#3085d6",
      }).then((result) => {
        if (result.isConfirmed) {
          // Handle the logout action here (replace with your actual logout logic)
          Swal.fire({
            title: "Logged Out!",
            text: "You have been successfully logged out.",
            icon: "success",
            confirmButtonColor: "#3085d6",
          }).then(() => {
            // Redirect to the login page or any other designated page for logging out
            let url = `${baseURL}/admin/logout?key=${uuid}`;
            console.log(uuid);
            fetch(url, {
                method: 'POST'
              })
              .then(response => response)
              .then(data => {
                // openCustomAlert("User LogOut SucessFull!!");
                localStorage.setItem("username", JSON.stringify(""));
                localStorage.setItem("uuid", JSON.stringify(""));
              
                console.log(data);
              })
              .catch(error => {
                console.error('Error posting data:', error);
              });
            window.location.href = "../index.html"; // Replace "login.html" with the actual logout page URL
          });
        }
      });
    });
  });

  // Showing Reservation data on page cards
function showResvereation(){
   fetch(`${baseURL}/reservation/viewall?key=${uuid}`)
   .then((Response) => {
    return Response.json()
})
.then((data) => {
    let count = Array.isArray(data) ? data.length : 0;
    let cal = count > 0 ? (count*100)/500 : 0;
    document.getElementById("res-id").innerText=cal+"%";
}
).catch(() => document.getElementById("res-id").innerText="0%")}

  // Showing Feedback data on page cards
function showFeedback(){
   fetch(`${baseURL}/feedback/viewAll?key=${uuid}`)
   .then((Response) => {
    return Response.json()
})
.then((data) => {
    let count = Array.isArray(data) ? data.length : 0;
    let cal = count > 0 ? (count*100)/500 : 0;
    document.getElementById("feedback-id").innerText=cal+"%";
}
).catch(() => document.getElementById("feedback-id").innerText="0%")}
