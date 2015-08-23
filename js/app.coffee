root = this
root.augmentApp = angular.module('augmentApp', ['gridster', 'ngRoute', 'ui.bootstrap'])
augmentApp.config ($routeProvider) ->
  $routeProvider
  .when('/',
    templateUrl: 'views/home.html'
    controller: 'ProjectsIndexController')
  .when('/projects/index',
    templateUrl: 'views/projects/index.html'
    controller: 'ProjectsIndexController')
  .when('/projects/:project_key',
    templateUrl: (params) ->
      'views/projects/' + params['project_key'] + '.html';
    controller: 'ProjectsShowController')
  .when('/press_articles/index',
    templateUrl: 'views/press_articles/index.html'
    controller: 'PressArticlesIndexController')
  .when('/contact/form',
    templateUrl: 'views/contact/form.html'
    controller: 'ContactController')
  .when('/about/index',
    templateUrl: 'views/about/index.html'
    controller: 'AboutController')
  .otherwise redirectTo: '/'
