Route = Ember.Route.extend
  redirect: (params) ->
    @transitionTo('cities')

`export default Route`
