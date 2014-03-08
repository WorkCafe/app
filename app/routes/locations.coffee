Route = Ember.Route.extend
  model: (model) ->
    @store.find('location')

`export default Route`
