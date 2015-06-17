$(document).ready(function() {
     L.mapbox.accessToken = 'pk.eyJ1IjoieWNhcnRjIiwiYSI6IjQ3ODdkNTcyZjRmMjhhNTA3NjZlM2RmNjkwMWNmNmNhIn0.0rgh5-PzgZU4PHX_xQ03WQ';
     var map = L.mapbox.map('map', 'ycartc.mfn3k4n0')
     .setView([40.266428364211436, -76.88592910766602], 9);

     var markerLayer = L.mapbox.featureLayer().addTo(map);


     var geojson = {
  "type": "Feature",
  "geometry": {
    "type": "Point",
    "coordinates": [40.266428364211436, -76.88592910766602]
  },
  "properties": {
    "name": "Denver, Colorado"
    "marker-color": "#fff",
    "marker-size": "small",
    "marker-symbol": "circle"
  }
};

markerLayer.setGeoJSON(geojson);
     });
