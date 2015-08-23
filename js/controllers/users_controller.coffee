augmentApp.controller 'UsersController', ($scope, $location, $cookieStore, UsersFactory, AlertsFactory) ->
  $scope.login = ->
    if $scope.userName? && $scope.password?
      UsersFactory.login($scope.userName, $scope.password).then (result)->
        AlertsFactory.addAlert("success", "Successfully logged in")
        $cookieStore.put 'user', result
        $location.path "/model3ds/index"
      , (error) ->
          AlertsFactory.addAlert("error", "Incorrect username or password")
          $location.path "/"
    else
      AlertsFactory.addAlert("error", "Username and password are required")
