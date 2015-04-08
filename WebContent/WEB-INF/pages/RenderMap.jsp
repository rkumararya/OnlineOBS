<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<!-- markers -->
<!-- <html>
  <head>
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no">
    <meta charset="utf-8">
    <title>Using closures in event listeners</title>
    <style>
      html, body, #map-canvas {
        height: 100%;
        margin: 0px;
        padding: 0px
      }
    </style>
    <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&signed_in=true"></script>
    <script>
		function initialize() {
		  var mapOptions = {
		    zoom: 4,
		    center: new google.maps.LatLng(21.7679, 78.8718)
		  };
		
		  var map = new google.maps.Map(document.getElementById('map-canvas'),
		      mapOptions);
		
		  // Add 5 markers to the map at random locations
		  var southWest = new google.maps.LatLng(26.469999, 79.519997);
		  var northEast = new google.maps.LatLng(15.364708, 75.123955);
		
		  var bounds = new google.maps.LatLngBounds(southWest, northEast);
		  map.fitBounds(bounds);
		
		  var lngSpan = northEast.lng() - southWest.lng();
		  var latSpan = northEast.lat() - southWest.lat();
		
		  for (var i = 0; i < 5; i++) {
		    var position = new google.maps.LatLng(
		        southWest.lat() + latSpan * Math.random(),
		        southWest.lng() + lngSpan * Math.random());
		    var marker = new google.maps.Marker({
		      position: position,
		      map: map
		    });
		
		    marker.setTitle((i + 1).toString());
		    attachSecretMessage(marker, i);
		  }
		}
		
		// The five markers show a secret message when clicked
		// but that message is not within the marker's instance data
		function attachSecretMessage(marker, num) {
		  var message = ['This', 'is', 'the', 'secret', 'message'];
		  var infowindow = new google.maps.InfoWindow({
		    content: message[num]
		  });
		
		  google.maps.event.addListener(marker, 'click', function() {
		    infowindow.open(marker.get('map'), marker);
		  });
		}
		
		google.maps.event.addDomListener(window, 'load', initialize);

    </script>
  </head>
  <body>
    <div id="map-canvas"></div>
  </body>
</html> -->


<!-- Complex ICONS -->
<html>
  <head>
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no">
    <meta charset="utf-8">
    <title>Complex icons</title>
    <style>
      html, body, #map-canvas {
        height: 100%;
        margin: 0px;
        padding: 0px
      }
    </style>
    <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&signed_in=true"></script>
    <script>
// The following example creates complex markers to indicate beaches near
// Sydney, NSW, Australia. Note that the anchor is set to
// (0,32) to correspond to the base of the flagpole.

function initialize() {
  var mapOptions = {
    zoom: 10,
    center: new google.maps.LatLng(21.7679, 78.8718)
  }
  var map = new google.maps.Map(document.getElementById('map-canvas'),
                                mapOptions);
	setBaloons(map, places);
  //setMarkers(map, beaches);
}

/**
 * Data for the markers consisting of a name, a LatLng and a zIndex for
 * the order in which these markers should display on top of each
 * other.
 */
var places = [
  ['Auraiya, Uttar Pradesh, India', 26.469999, 79.519997, 4],
  ['Kavesar, Thane West, Thane, Maharashtra, India', 19.262466, 72.974106, 5],
  ['Buldana, Maharashtra, India', 20.536846, 76.180870, 3],
  ['Thane West, Thane, Maharashtra, India', 19.226662, 72.983833, 2],
  ['Kochi, Kerala, India', 9.939093, 76.270523, 1], 
  ['Lonavla, Pune, Maharashtra, India', 18.747490000000000000, 73.403442000000040000, 6]
];

function setBaloons(map, locations) {
	for (var i = 0; i < locations.length; i++) {
		var place = locations[i];
	    var myLatLng = new google.maps.LatLng(place[1], place[2]);
	    /* var position = new google.maps.LatLng(
	        southWest.lat() + latSpan * Math.random(),
	        southWest.lng() + lngSpan * Math.random()); */
	    var marker = new google.maps.Marker({
	      position: myLatLng,
	      map: map
	    });
	
	    marker.setTitle((i + 1).toString());
	    attachSecretMessage(marker, i);
	  }
}

// functions to set image markers
function setMarkers(map, locations) {
  // Add markers to the map

  // Marker sizes are expressed as a Size of X,Y
  // where the origin of the image (0,0) is located
  // in the top left of the image.

  // Origins, anchor positions and coordinates of the marker
  // increase in the X direction to the right and in
  // the Y direction down.
  var image = {
    url: 'images/beachflag.png',
    // This marker is 20 pixels wide by 32 pixels tall.
    size: new google.maps.Size(20, 32),
    // The origin for this image is 0,0.
    origin: new google.maps.Point(0,0),
    // The anchor for this image is the base of the flagpole at 0,32.
    anchor: new google.maps.Point(0, 32)
  };
  // Shapes define the clickable region of the icon.
  // The type defines an HTML &lt;area&gt; element 'poly' which
  // traces out a polygon as a series of X,Y points. The final
  // coordinate closes the poly by connecting to the first
  // coordinate.
  var shape = {
      coords: [1, 1, 1, 20, 18, 20, 18 , 1],
      type: 'poly'
  };
  for (var i = 0; i < locations.length; i++) {
    var beach = locations[i];
    var myLatLng = new google.maps.LatLng(beach[1], beach[2]);
    var marker = new google.maps.Marker({
        position: myLatLng,
        map: map,
        icon: image,
        shape: shape,
        title: beach[0],
        zIndex: beach[3]
    });
  }
}

// attach a message to the baloon
	function attachSecretMessage(marker, num) {
	  var message = ['Auraiya, Uttar Pradesh, India', 'Kavesar, Thane West, Thane, Maharashtra, India', 
	                 'Buldana, Maharashtra, India', 'Thane West, Thane, Maharashtra, India', 
	                 'Kochi, Kerala, India', 'Lonavla, Pune, Maharashtra, India'];
	  var infowindow = new google.maps.InfoWindow({
	    content: message[num]
	  });
	
	  google.maps.event.addListener(marker, 'click', function() {
	    infowindow.open(marker.get('map'), marker);
	  });
	}

google.maps.event.addDomListener(window, 'load', initialize);

    </script>
  </head>
  <body>
    <div id="map-canvas"></div>
  </body>
</html>

<!-- <html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Google Maps</title>
	<script
	    src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false"></script>
	<script>
	var map;
	function initialize() {
	  var mapOptions = {
	    zoom: 8, center: new google.maps.LatLng(18.760266400000000000, 73.863034599999990000)	// For pune chakan
	    /* center: new google.maps.LatLng(-34.397, 150.644) */
	  };
	  map = new google.maps.Map(document.getElementById('map-canvas'),
	      mapOptions);
	}
	
	google.maps.event.addDomListener(window, 'load', initialize);
	</script>
</head>
<body>
	<h1>Google Maps</h1>
	<div id="map-canvas" style="height:1500px; width:1200px"></div>
</body>
</html> -->