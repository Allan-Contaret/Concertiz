function initMap() {
  var geocoder = new google.maps.Geocoder;
  var map = new google.maps.Map(document.getElementById('map'), {
    zoom: 15,
    center: {lat: -33.865, lng: 151.209}
  });
  geocodeAddress(geocoder, map, address);
}

function geocodeAddress(geocoder, map, address) {
  geocoder.geocode({
    address: address
  }, function(results, status) {
    if (status === google.maps.GeocoderStatus.OK) {
      map.setCenter(results[0].geometry.location);
      new google.maps.Marker({
        map: map,
        position: results[0].geometry.location
      });
    } else {
      window.alert('Geocode was not successful for the following reason: ' +
          status);
    }
  });
}