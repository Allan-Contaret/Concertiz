function initMap() {
  var customMapType = new google.maps.StyledMapType([
    {
      featureType: 'all',
      stylers: [
        { saturation: -80 }
      ]
    },{
      featureType: 'road.arterial',
      elementType: 'geometry',
      stylers: [
        { hue: '#00ffee' },
        { saturation: 50 }
      ]
    },{
      featureType: 'poi.business',
      elementType: 'labels',
      stylers: [
        { visibility: 'off' }
      ]
    }
  ], {
      name: 'Retro'
  });
  var customMapTypeId = 'custom_style';

  var geocoder = new google.maps.Geocoder;
  var map = new google.maps.Map(document.getElementById('map'), {
    zoom: 15,
    center: {lat: -33.865, lng: 151.209},
    mapTypeControlOptions: {
      mapTypeIds: [google.maps.MapTypeId.ROADMAP,google.maps.MapTypeId.SATELLITE,,google.maps.MapTypeId.HYBRID, google.maps.MapTypeId.TERRAIN, customMapTypeId]
    }
  });
  geocodeAddress(geocoder, map, address);
  map.mapTypes.set(customMapTypeId, customMapType);
  map.setMapTypeId(customMapTypeId);
  
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