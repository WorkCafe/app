Controller = Ember.Controller.extend
  searchValue: ''

  searchResults: ( ->
    searchValue = @get('searchValue')
    content = @get('content')
    if Ember.isEmpty(searchValue)
      content
    else
      searchMatcher = new RegExp(searchValue, 'gi')
      content.filter (location) ->
        searchMatcher.test(location.get('city')) or
        searchMatcher.test(location.get('country'))
  ).property('searchValue', 'content.@each')

`export default Controller`
