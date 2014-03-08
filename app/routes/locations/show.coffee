Route = Ember.Route.extend
  model: (params) ->
    @store.find('location', params.location_id)

`export default Route`
