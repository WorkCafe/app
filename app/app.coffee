`import Resolver from 'ember/resolver'`

App = Ember.Application.extend
  title: 'WorkCafe'
  # LOG_ACTIVE_GENERATION: true
  # LOG_MODULE_RESOLVER: true
  # LOG_TRANSITIONS: true
  # LOG_TRANSITIONS_INTERNAL: true
  # LOG_VIEW_LOOKUPS: true
  modulePrefix: 'app'
  Resolver: Resolver

`export default App`
