let Tbody = document.getElementById("Tbody");
 
let uuid=JSON.parse(localStorage.getItem("uuid")) || "";
let baseURL = `http://localhost:8088`;

getReservations();

function getReservations(){
    fetch(`${baseURL}/reservation/viewall?key=${uuid}`)
    .then((Response)=>{
        if(Response.status !== 200) {
            console.error("Failed to fetch reservations");
            return [];
        }
        return Response.json()
    })
    .then((data)=>{
        showData(data)
    })
    .catch((error) => {
        console.error('Error fetching reservations:', error);
    });
}

function showData(data){
    Tbody.innerHTML = null;
    if(!Array.isArray(data) || data.length === 0) {
        Tbody.innerHTML = "<tr><td colspan='8'>No reservations found</td></tr>";
        return;
    }
    
    let htmlData = data.map((el)=>getCard(
        el.reservationId,
        el.reservationStatus,
        el.reservationType,
        el.reservationDate,
        el.reservationTime,
        el.source,
        el.destination,
        el.bus ? el.bus.busName : "N/A"
    ))
    Tbody.innerHTML = htmlData.join("");
}

function getCard(id, Status, Type, Date, Time, Source, Destination, BusName){
    return `
    <tr id="ID${id}">
        <td>${id}</td>
        <td>${Status}</td>
        <td>${Type}</td>
        <td>${Date}</td>
        <td>${Time}</td>
        <td>${Source}</td>
        <td>${Destination}</td>
        <td>${BusName}</td>
    </tr>
    `
}
