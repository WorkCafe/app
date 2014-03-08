Router = Ember.Router.extend()

Router.map ->
  @route 'city', {path: '/:city_id'}
  @resource 'cities', ->
    @route 'show', {path: ':city_id'}

`export default Router`
