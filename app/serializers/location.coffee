Serializer = DS.ActiveModelSerializer.extend
  # Extracts GeoJSON attributes
  extractSingle: (store, type, payload) ->
    venues = []
    venue_ids = []
    payload.features.forEach (feature) ->
      venues.push feature.properties
      venue_ids.push feature.properties.id

    payload['venue_ids'] = venue_ids
    delete payload['type']
    delete payload['features']
    @_super(store, type, {location: payload, venues: venues})

`export default Serializer`
