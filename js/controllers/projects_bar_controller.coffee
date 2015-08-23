augmentApp.controller 'ProjectsBarController', ($scope, $timeout, $location, AlertsFactory) ->
  $scope.load = ->
    $('#projects-bar').affix(
      offset: {
        top: $('#projects-bar').offset().top - 70,
        bottom: $('footer').outerHeight(true)
      }
    )
    return
