App = undefined
module 'Homepage',
  setup: ->
    App = startApp()

  teardown: ->
    $.mockjaxClear();
    Ember.run App, 'destroy'

test 'index redirects to locations page', ->
  expect(2)
  $.mockjax
    url: '/api/v1/locations'
    responseText:
      locations: []

  visit('/').then ->
    title = find('a.navbar-brand')

    equal title.text(), App.get('title')
    equal currentURL(), '/locations'
