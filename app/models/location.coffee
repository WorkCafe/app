Location = DS.Model.extend
  venues: DS.hasMany('venue')

  mapEmbed: ( ->
    id = @get('id')
    github_url = '//render.github.com/view/geojson'
    our_json = '//raw.github.com/WorkCafe/workcafe.github.io/master/api/v1/locations/%@.json'.fmt(id)
    '%@?url=%@'.fmt(github_url, our_json)
  ).property('id')

`export default Location`
