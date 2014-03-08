City = DS.Model.extend
  city: DS.attr()
  country: DS.attr()
  continent: DS.attr()

  location: DS.belongsTo('location')

`export default City`
