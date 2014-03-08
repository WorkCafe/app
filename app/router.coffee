Router = Ember.Router.extend()

Router.map ->
  @resource 'cities', ->
    @route 'show', {path: ':city_id'}

`export default Router`
