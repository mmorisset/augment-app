augmentApp.factory "ProjectsFactory", ($q, $http) ->
  factory = {}
  projects = []

  factory.index = ->
    deferred = $q.defer()
    $http.get('/data/projects.json').then((result) ->
      deferred.resolve result.data
    )
    deferred.promise

  factory.get = (project_key)->
    deferred = $q.defer()
    $http.get("/data/#{project_key}.json").then((result) ->
      deferred.resolve result.data
    )
    deferred.promise

  factory
