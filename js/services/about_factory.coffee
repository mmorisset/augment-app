augmentApp.factory "AboutFactory", ($q, $http) ->
  factory = {}
  about = undefined

  factory.about = ->
    deferred = $q.defer()
    $http.get('/data/about.json').then((result) ->
      deferred.resolve result.data
    )
    deferred.promise

  factory
