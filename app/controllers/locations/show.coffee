Controller = Ember.Controller.extend
  searchValue: ''

  searchResults: ( ->
    searchValue = @get('searchValue')
    content = @get('content.venues')
    if Ember.isEmpty(searchValue)
      content
    else
      searchMatcher = new RegExp(searchValue, 'gi')
      content.filter (location) ->
        searchMatcher.test(location.get('title')) or
        searchMatcher.test(location.get('description')) or
        searchMatcher.test(location.get('address'))
  ).property('searchValue', 'content.venues.@each')

`export default Controller`
