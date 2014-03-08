Route = Ember.Route.extend
  model: (params) ->
    @store.find('city')

`export default Route`
