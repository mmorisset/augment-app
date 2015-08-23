augmentApp.factory 'AlertsFactory', ($rootScope) ->
  factory = {}
  $rootScope.alerts = []

  factory.addAlert = (type, msg) ->
    $rootScope.alerts.push {'type': type, 'msg': msg, close: -> factory.closeAlert(this)}

  factory.closeAlert= (alert) ->
    index = $rootScope.alerts.indexOf(alert)
    $rootScope.alerts.splice index, 1
            
  factory