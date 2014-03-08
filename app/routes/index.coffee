Route = Ember.Route.extend
  redirect: (model) ->
    @transitionTo('locations')

`export default Route`
