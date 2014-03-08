Router = Ember.Router.extend()

Router.map ->
  @route 'location', {path: '/:location_id'}
  @resource 'locations', ->
    @route 'show', {path: ':location_id'}

`export default Router`
