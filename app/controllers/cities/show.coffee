Controller = Ember.Controller.extend
  mapIsVisible: false
  searchValue: ''

  searchResults: ( ->
    searchValue = @get('searchValue')
    content = @get('content.venues')
    if Ember.isEmpty(searchValue)
      content
    else
      searchMatcher = new RegExp(searchValue, 'gi')
      content.filter (venue) ->
        searchMatcher.test(venue.get('title')) or
        searchMatcher.test(venue.get('description')) or
        searchMatcher.test(venue.get('address'))
  ).property('searchValue', 'content.venues.@each')

  actions:
    showMap: ->
      @toggleProperty('mapIsVisible')
      false

`export default Controller`
