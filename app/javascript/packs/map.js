import mapboxgl from 'mapbox-gl';
import 'mapbox-gl/dist/mapbox-gl.css';
// TODO: Write your JS code in here
// const address = document.querySelector("#address");
// const submit = document.querySelector("#submit");
// const coordinate = document.querySelector(".result-text");
const address = document.querySelector("#address")
const token = "pk.eyJ1Ijoid2VuZ2FpciIsImEiOiJjanlqbzd1NjEwNXUxM2lxbjBzd21qZ2hiIn0.hJjAulIfT_WGa3X-LiIzjA";


  console.log(encodeURIComponent(address.innerText));
  const addressUrl = encodeURIComponent(address.value);
  fetch(`https://api.mapbox.com/geocoding/v5/mapbox.places/${addressUrl}.json?access_token=${token}`)
    .then(response => response.json())
    .then((data) => {
      console.log(data.features[0].center);
      // coordinate.innerText = `${data.features[0].center[1]}, ${data.features[0].center[0]}`;
      mapboxgl.accessToken = token;
      const map = new mapboxgl.Map({
        container: 'map',
        style: 'mapbox://styles/mapbox/streets-v9',
        center: [data.features[0].center[0], data.features[0].center[1]],
        zoom: 12
      });
      new mapboxgl.Marker()
        .setLngLat([data.features[0].center[0], data.features[0].center[1]])
        .addTo(map);
    });
