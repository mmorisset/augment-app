augmentApp.factory "PressArticlesFactory", ($q, $http) ->
  factory = {}
  press_articles = []

  factory.index = ->
    deferred = $q.defer()
    $http.get('/data/press_articles.json').then((result) ->
      deferred.resolve result.data
    )
    deferred.promise

  factory
