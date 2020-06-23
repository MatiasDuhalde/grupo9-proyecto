function activatePlacesSearch() {
    var defaultBounds = new google.maps.LatLngBounds(
        new google.maps.LatLng(-33.659816, -70.968645),
        new google.maps.LatLng(-33.157895, -70.416178));      
    var input = document.getElementById('location_autocomplete')
    var options = {
        bounds: defaultBounds,
        fields: ['place_id', 'name']
    };
    var autocomplete = new google.maps.places.Autocomplete(input, options)
    var output_field = document.getElementById('local_place_id')
    autocomplete.addListener('place_changed', function() {
        var place = autocomplete.getPlace();
        console.log(place)
        console.log(place.name)
        output_field.value = place.place_id
        console.log(output_field)
    })
}