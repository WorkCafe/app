Route = Ember.Route.extend
  setupController: (controller, model) ->
    location = @store.find('location', model.get('id'))
    controller.set('city', model)
    controller.set('content', location)

`export default Route`
