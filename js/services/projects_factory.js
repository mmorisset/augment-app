// Generated by CoffeeScript 1.7.1
augmentApp.factory("ProjectsFactory", function($q, $http) {
  var factory, projects;
  factory = {};
  projects = [];
  factory.index = function() {
    var deferred;
    deferred = $q.defer();
    $http.get('/data/projects.json').then(function(result) {
      return deferred.resolve(result.data);
    });
    return deferred.promise;
  };
  factory.get = function(project_key) {
    var deferred;
    deferred = $q.defer();
    $http.get("/data/" + project_key + ".json").then(function(result) {
      return deferred.resolve(result.data);
    });
    return deferred.promise;
  };
  return factory;
});
