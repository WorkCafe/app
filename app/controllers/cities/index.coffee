Controller = Ember.Controller.extend
  searchValue: ''

  searchResults: ( ->
    searchValue = @get('searchValue')
    content = @get('content')
    if Ember.isEmpty(searchValue)
      content
    else
      searchMatcher = new RegExp(searchValue, 'gi')
      content.filter (city) ->
        searchMatcher.test(city.get('city')) or
        searchMatcher.test(city.get('country'))
  ).property('searchValue', 'content.@each')

`export default Controller`
