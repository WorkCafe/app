App = undefined
module 'Venues Page',
  setup: ->
    App = startApp()
    $.mockjax
      url: '/api/v1/locations'
      responseText:
        locations: [
          {
            id: 'LOC_1',
            city: 'CityName',
            venue_ids: ['VEN_1', 'VEN_2', 'VEN_3']
          }
        ]
        venues: [
          {id: 'VEN_1', title: 'Venue #1'}
          {id: 'VEN_2', title: 'Venue #2', description: 'Description #2'}
          {id: 'VEN_3', address: 'Address #3'}
        ]

  teardown: ->
    $.mockjaxClear();
    Ember.run App, 'destroy'

test 'renders available venues', ->
  expect(4)
  visit('/locations/LOC_1').then ->
    $listing = find('.venues-list tbody tr')

    equal $listing.length, 3
    equal $($listing[0]).find('td:first h4').text().trim(), 'Venue #1'
    equal $($listing[1]).find('td:first h4').text().trim(), 'Venue #2'
    equal $($listing[2]).find('td:first h4').text().trim(), 'Address #3'

test 'searches through venues title', ->
  expect(2)
  visit('/locations').then ->
    fillIn('.venues-search', 'venue #1')
    $listing = find('.venues-list tbody tr')

    equal $listing.length, 1
    equal $listing.find('td:first h4').text().trim(), 'Venue #1'

test 'searches through venues address', ->
  expect(2)
  visit('/locations').then ->
    fillIn('.venues-search', 'address')
    $listing = find('.locations-list tbody tr')

    equal $listing.length, 1
    equal $listing.find('td:first h4').text().trim(), 'Address #3'

test 'searches through venues description', ->
  expect(2)
  visit('/locations').then ->
    fillIn('.venues-search', 'description')
    $listing = find('.locations-list tbody tr')

    equal $listing.length, 1
    equal $listing.find('td:first h4').text().trim(), 'Venue #2'
