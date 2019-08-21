// navigator.geolocation.getCurrentPosition(function(position) {
//   const userLocationDiv = document.getElementById('position');
//   console.log(userLocationDiv);
//   userLocationDiv.innerHTML = `${position.coords.latitude}, ${position.coords.longitude}`;
// });


const setUserLocation = (event) => {
  navigator.geolocation.getCurrentPosition(function(position) {
    const latitude = position.coords.latitude;
    const longitude = position.coords.longitude;
    const requestBody = {
      latitude,
      longitude
    }
    fetch(`/set-user-location`, {
        headers: {
          'Content-Type': 'application/json'
        },
        method: "POST",
        body: JSON.stringify(requestBody)
      })
        .then(response => response.json())
        .then ((data) => {

        })
  });
  // const requestBody = {
  //   latitude: window.userLatitude,
  //   longitude: window.userLongitude
  // }
};

setUserLocation();
