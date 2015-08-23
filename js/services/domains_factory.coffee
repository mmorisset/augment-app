augmentApp.factory "DomainsFactory", ($q, $http) ->
  factory = {}
  domains = []

  factory.index = ->
    deferred = $q.defer()
    $http.get('/data/domains.json').then((result) ->
      deferred.resolve result.data
    )
    deferred.promise

  factory
