App = undefined
module 'Locations Page',
  setup: ->
    App = startApp()
    $.mockjax
      url: '/api/v1/locations'
      responseText:
        locations: [
          {id: 'LOC_1', city: 'CityName'}
          {id: 'LOC_2', country: 'CountryName'}
        ]

  teardown: ->
    $.mockjaxClear();
    Ember.run App, 'destroy'

test 'index renders available locations', ->
  expect(3)
  visit('/locations').then ->
    $listing = find('.locations-list tbody tr')

    equal $listing.length, 2
    equal $listing.find('td:first').text().trim(), 'CityName'
    equal $listing.find('td:nth-child(2)').text().trim(), 'CountryName'

test 'index searches through locations city', ->
  expect(2)
  visit('/locations').then ->
    fillIn('.locations-search', 'city')
    $listing = find('.locations-list tbody tr')

    equal $listing.length, 1
    equal $listing.find('td:first').text().trim(), 'CityName'

test 'index searches through locations country', ->
  expect(2)
  visit('/locations').then ->
    fillIn('.locations-search', 'country')
    $listing = find('.locations-list tbody tr')

    equal $listing.length, 1
    equal $listing.find('td:nth-child(2)').text().trim(), 'CountryName'
