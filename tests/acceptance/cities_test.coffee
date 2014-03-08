App = undefined
module 'Cities Page',
  setup: ->
    App = startApp()
    $.mockjax
      url: '/api/v1/cities.json'
      responseText:
        cities: [
          {id: 'CTY_1', city: 'CityName'}
          {id: 'CTY_2', country: 'CountryName'}
        ]

  teardown: ->
    $.mockjaxClear();
    Ember.run App, 'destroy'

test 'index renders available cities', ->
  expect(3)
  visit('/cities').then ->
    $listing = find('.cities-list tbody tr')

    equal $listing.length, 2
    equal $listing.find('td:first').text().trim(), 'CityName'
    equal $listing.find('td:nth-child(2)').text().trim(), 'CountryName'

test 'index searches through cities city', ->
  expect(2)
  visit('/cities').then ->
    fillIn('.cities-search', 'city')
    $listing = find('.cities-list tbody tr')

    equal $listing.length, 1
    equal $listing.find('td:first').text().trim(), 'CityName'

test 'index searches through cities country', ->
  expect(2)
  visit('/cities').then ->
    fillIn('.cities-search', 'country')
    $listing = find('.cities-list tbody tr')

    equal $listing.length, 1
    equal $listing.find('td:nth-child(2)').text().trim(), 'CountryName'
