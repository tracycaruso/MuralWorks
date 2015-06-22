$(document).ready(function() {
     L.mapbox.accessToken = 'pk.eyJ1IjoieWNhcnRjIiwiYSI6IjQ3ODdkNTcyZjRmMjhhNTA3NjZlM2RmNjkwMWNmNmNhIn0.0rgh5-PzgZU4PHX_xQ03WQ';
     var map = L.mapbox.map('map', 'ycartc.mfn3k4n0')
     .setView([40.266428, -76.885929], 14);


     $.ajax({
      dataType: 'text',
      url: 'murals.json',
      success: function(data) {
        var geojson;
        geojson = $.parseJSON(data);
        console.log(geojson);
        return map.featureLayer.setGeoJSON(geojson);
      }
    });


    map.featureLayer.on('layeradd', function(e) {
      var marker, popupContent, properties;
      marker = e.layer;
      properties = marker.feature.properties;
      popupContent =
      '<div class="popup">' +
      '<h3>' + properties.name +
      '</h3>' +
      '<img class="mural-map" src="'+
      properties.image +
      '"/>' +
      '</div>';
      return marker.bindPopup(popupContent, {
        closeButton: false,
        minWidth: 320
      });
    });

    $('article li').click(function(e) {
      var current, currentlyClickedName;
      current = $(this);
      currentlyClickedName = current.find('h2').text();
      return map.featureLayer.eachLayer(function(marker) {
        var id;
        if (marker.feature.properties.name === currentlyClickedName) {
          id = layer._leaflet_id;
          return map._layers[id].openPopup();
        }
      });
    });


});
