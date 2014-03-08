Route = Ember.Route.extend
  redirect: (params) ->
    @transitionTo('locations.show', params)

`export default Route`
