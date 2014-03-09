Adapter = DS.ActiveModelAdapter.extend
  # API End-point namespace
  namespace: 'api/v1'

  # Append .json
  buildURL: (record, suffix) ->
        url = @_super(record, suffix)
        url + '.json'

`export default Adapter`
