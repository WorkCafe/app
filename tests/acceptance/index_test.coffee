App = undefined
module 'Homepage',
  setup: ->
    App = startApp()
    $.mockjax
      url: '/api/v1/locations'
      responseText:
        locations: []

  teardown: ->
    $.mockjaxClear();
    Ember.run App, 'destroy'

test 'index redirects to locations page', ->
  expect(2)

  visit('/').then ->
    title = find('a.navbar-brand')

    equal title.text(), App.get('title')
    equal currentURL(), '/locations'

