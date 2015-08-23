augmentApp.factory "UsersFactory", ($rootScope, $q, Restangular) ->
  factory = {}
  user = {}

  factory.login = (userName, password) ->
    deferred = $q.defer()
    user =
      login: userName
      password: password

    Restangular.all("users").customOperation("get", "authenticate", user).then (result) ->
      deferred.resolve result
    , (response) ->
      deferred.reject response
    deferred.promise

  factory
