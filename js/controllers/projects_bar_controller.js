// Generated by CoffeeScript 1.7.1
augmentApp.controller('ProjectsBarController', function($scope, $timeout, $location, AlertsFactory) {
  return $scope.load = function() {
    $('#projects-bar').affix({
      offset: {
        top: $('#projects-bar').offset().top - 70,
        bottom: $('footer').outerHeight(true)
      }
    });
  };
});