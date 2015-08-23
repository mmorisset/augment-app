// Generated by CoffeeScript 1.6.3
(function() {
  augmentApp.factory('AlertsFactory', function($rootScope) {
    var factory;
    factory = {};
    $rootScope.alerts = [];
    factory.addAlert = function(type, msg) {
      return $rootScope.alerts.push({
        'type': type,
        'msg': msg,
        close: function() {
          return factory.closeAlert(this);
        }
      });
    };
    factory.closeAlert = function(alert) {
      var index;
      index = $rootScope.alerts.indexOf(alert);
      return $rootScope.alerts.splice(index, 1);
    };
    return factory;
  });

}).call(this);