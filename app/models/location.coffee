Location = DS.Model.extend
  city: DS.attr()
  country: DS.attr()
  continent: DS.attr()

  venues: DS.hasMany('venue')

`export default Location`
