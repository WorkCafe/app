Router = Ember.Router.extend()

Router.map ->
  @resource 'locations', ->
    @route 'show', {path: ':location_id'}

`export default Router`
