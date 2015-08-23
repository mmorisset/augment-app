augmentApp.controller 'AboutController', ($scope, $location, $timeout, $routeParams, ProjectsFactory, AboutFactory, AlertsFactory) ->
  AboutFactory.about().then (result) ->
    $scope.experiences = result.experiences
    $scope.distinctions = result.distinctions
    $scope.formations = result.formations
    $scope.skills = result.skills

  # $('#scroll').affix()
