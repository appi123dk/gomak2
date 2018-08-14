/* --------------------------------------------------
  Google Maps Settings
-------------------------------------------------- */



$(document).ready(function(){

  var beachMarker;
  function initGMap() {
    'use strict';

    var mapOptions = {
    // How zoomed in you want the map to start at (always required)
    zoom: 15,
    scrollwheel: false,
    disableDefaultUI: true,

    // The latitude and longitude to center the map (always required)
    center: new google.maps.LatLng(37.495420, 127.036007), 

    // Styling of the map in JSON object
    styles: [{"featureType":"administrative","elementType":"labels.text.fill","stylers":[{"color":"#444444"}]},{"featureType":"landscape","elementType":"all","stylers":[{"color":"#f2f2f2"}]},{"featureType":"poi","elementType":"all","stylers":[{"visibility":"off"}]},{"featureType":"road","elementType":"all","stylers":[{"saturation":-100},{"lightness":45}]},{"featureType":"road.highway","elementType":"all","stylers":[{"visibility":"simplified"}]},{"featureType":"road.arterial","elementType":"labels.icon","stylers":[{"visibility":"off"}]},{"featureType":"transit","elementType":"all","stylers":[{"visibility":"off"}]},{"featureType":"water","elementType":"all","stylers":[{"color":"#cdd2d4"},{"visibility":"on"}]}]
    };
    var map = new google.maps.Map(document.getElementById('map'),
      mapOptions);

    // Map marker 
    // var image = '/assets/gomakculture/map-pin.png';
    var myLatLng = new google.maps.LatLng(37.495420, 127.036007);
    beachMarker = new google.maps.Marker({
      position: myLatLng,
      map: map,
      animation: google.maps.Animation.DROP,
      // icon: image
    });
    beachMarker.addListener('click', toggleBounce)
  } // initGMap

  function toggleBounce() {
      if (beachMarker.getAnimation() !== null) {
        beachMarker.setAnimation(null);
      } else {
        beachMarker.setAnimation(google.maps.Animation.BOUNCE);
      }
    }

  google.maps.event.addDomListener(window, 'load', initGMap);

});