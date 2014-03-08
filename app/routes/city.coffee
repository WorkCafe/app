Route = Ember.Route.extend
  redirect: (params) ->
    @transitionTo('cities.show', params)

`export default Route`
