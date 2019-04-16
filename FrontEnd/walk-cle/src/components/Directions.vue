
 
  <template>
  <div id="directions">
    <div id="floating-panel">
      <b>Start:</b>
      <select id="start">
        <option/>
        <option value="Progressive Field">Progressive Field</option>
        <option value="Flannery's Bar Cleveland">Flannery's Bar</option>
        <option value="Great Lakes Science Center">Great Lakes Science Center</option>
        <option value="staten island ferry terminal, new york, ny">Staten Island Ferry Terminal</option>
        <option value="101 E 125th Street, New York, NY">Harlem - 125th St Station</option>
      </select>
      <b>End:</b>
      <select id="end">
        <option/>
        <option value="7100 Euclid Ave #140, Cleveland, OH 44103">Tech Elevator</option>
        <option value="W 49th St & 5th Ave, New York, NY 10020">Rockefeller Center</option>
        <option value="moma, New York, NY">MOMA</option>
        <option value="350 5th Ave, New York, NY, 10118">Empire State Building</option>
        <option value="253 West 125th Street, New York, NY">Apollo Theater</option>
        <option value="1 Wall St, New York, NY">Wall St</option>
      </select>
    </div>
    <div id="map"></div>
    <div id="warnings-panel"></div>
  </div>
</template>
    <script>
export default {
  name: "directions",
  methods: {
    initMap() {
      var markerArray = [];

      // Instantiate a directions service.
      var directionsService = new google.maps.DirectionsService();

      // Create a map and center it on Manhattan.
      var map = new google.maps.Map(document.getElementById("map"), {
        zoom: 13,
        center: { lat: 41.49999, lng: -81.689366 }
      });

      // Create a renderer for directions and bind it to the map.
      var directionsDisplay = new google.maps.DirectionsRenderer({ map: map });

      // Instantiate an info window to hold step text.
      var stepDisplay = new google.maps.InfoWindow();

      // Display the route between the initial start and end selections.
      this.calculateAndDisplayRoute(
        directionsDisplay,
        directionsService,
        markerArray,
        stepDisplay,
        map
      );
      // Listen to change events from the start and end lists.
      const vm = this;
      var onChangeHandler = function() {
        vm.calculateAndDisplayRoute(
          directionsDisplay,
          directionsService,
          markerArray,
          stepDisplay,
          map
        );
      };
      document
        .getElementById("start")
        .addEventListener("change", onChangeHandler);
      document
        .getElementById("end")
        .addEventListener("change", onChangeHandler);
    },

    calculateAndDisplayRoute(
      directionsDisplay,
      directionsService,
      markerArray,
      stepDisplay,
      map
    ) {
      // First, remove any existing markers from the map.
      for (var i = 0; i < markerArray.length; i++) {
        markerArray[i].setMap(null);
      }

      // Retrieve the start and end locations and create a DirectionsRequest using
      // WALKING directions.
      const vm = this;
      directionsService.route(
        {
          origin: document.getElementById("start").value,
          destination: document.getElementById("end").value,
          travelMode: "WALKING"
        },
        function(response, status) {
          // Route the directions and pass the response to a function to create
          // markers for each step.
          if (status === "OK") {
            //document.getElementById("warnings-panel").innerHTML = "<b>" + response.routes[0].warnings + "</b>";
            directionsDisplay.setDirections(response);
            vm.showSteps(response, markerArray, stepDisplay, map);
           } //else {
          //   window.alert("Directions request failed due to " + status);
          // }
        }
      );
    },

    showSteps(directionResult, markerArray, stepDisplay, map) {
      // For each step, place a marker, and add the text to the marker's infowindow.
      // Also attach the marker to an array so we can keep track of it and remove it
      // when calculating new routes.
      var myRoute = directionResult.routes[0].legs[0];
      for (var i = 0; i < myRoute.steps.length; i++) {
        var marker = (markerArray[i] =
          markerArray[i] || new google.maps.Marker());
        marker.setMap(map);
        marker.setPosition(myRoute.steps[i].start_location);
        this.attachInstructionText(
          stepDisplay,
          marker,
          myRoute.steps[i].instructions,
          map
        );
      }
    },

    attachInstructionText(stepDisplay, marker, text, map) {
      google.maps.event.addListener(marker, "click", function() {
        // Open an info window when the marker is clicked on, containing the text
        // of the step.
        stepDisplay.setContent(text);
        stepDisplay.open(map, marker);
      });
    }
  },
  mounted() {
    console.log("mounted");
    this.initMap();
  }
};
</script>
   
    <style>
/* Always set the map height explicitly to define the size of the div
       * element that contains the map. */
#map {
  height: 100vh;
  width: 100vw;
}
/* Optional: Makes the sample page fill the window. */
html,
body {
  height: 100%;
  margin: 0;
  padding: 0;
}
#floating-panel {
  position: absolute;
  top: 10px;
  left: 25%;
  z-index: 5;
  background-color: #fff;
  padding: 5px;
  border: 1px solid #999;
  text-align: center;
  font-family: "Roboto", "sans-serif";
  line-height: 30px;
  padding-left: 10px;
}
#warnings-panel {
  width: 100%;
  height: 10%;
  text-align: center;
}
</style>
  