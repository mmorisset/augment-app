augmentApp.controller 'ProjectsIndexController', ($scope, $location, $timeout, ProjectsFactory, DomainsFactory, AlertsFactory) ->
  $scope.domains_filter = []

  DomainsFactory.index().then (domains) ->
    $scope.domains = domains

  ProjectsFactory.index().then (projects) ->
    $scope.projects = projects

  $scope.getDomainColor = (domain_key) ->
    domain = $scope.domains.filter (domain) -> domain.key == domain_key
    domain[0].color

  $scope.select_domains = ($event, domain_key) ->
    if angular.element($event.target).hasClass('active')
      $scope.domains_filter = $scope.domains_filter.filter (domain) ->
        domain isnt domain_key
    else
      $scope.domains_filter.push domain_key
    console.log $scope.domains_filter

  $scope.filter_by_domain = (domain_key) ->
    $scope.domains_filter.indexOf(domain_key.toString()) != -1 || $scope.domains_filter.length == 0

  $scope.gridsterOpts = {
    columns: 3, # the width of the grid, in columns
    width: 'auto', # can be an integer or 'auto'. 'auto' scales gridster to be the full width of its containing element
    colWidth: 'auto', # can be an integer or 'auto'.  'auto' uses the pixel width of the element divided by 'columns'
    rowHeight: 'match', # can be an integer or 'match'.  Match uses the colWidth, giving you square widgets.
    margins: [10, 10], # the pixel distance between each widget
    isMobile: true, # stacks the grid items if true
    minColumns: 1, # the minimum columns the grid must have
    minRows: 2, # the minimum height of the grid, in rows
    maxRows: 100,
    defaultSizeX: 2, # the default width of a gridster item, if not specifed
    defaultSizeY: 1, # the default height of a gridster item, if not specified
    mobileBreakPoint: 200, # if the screen is not wider that this, remove the grid layout and stack the items
    resizable: {
       enabled: false,
    },
    draggable: {
       enabled: true, # whether dragging items is supported
    }
  };

augmentApp.controller 'ProjectsShowController', ($scope, $location, $timeout, $routeParams, ProjectsFactory, AlertsFactory) ->
  ProjectsFactory.get($routeParams.project_key).then (project) ->
    $scope.project = project
    console.log project.images_carousel



  # controller = new ScrollMagic (
  #   globalSceneOptions:
  #     triggerHook: "onCenter"
  # )

  # $scope.pageLoad = ->
  #   $("#project").load ->
  #     console.log $('#foreground-trigger-2').position().top
  #   scene1 = new ScrollScene(
  #     triggerElement: "#foreground-trigger-1"
  #     duration: $(window).height() + 300
  #     offset: -100
  #   ).setTween new TimelineMax().add([
  #     TweenMax.fromTo("#foreground-1", 1,
  #       top: 1000
  #     ,
  #       top: 0
  #       ease: Linear.easeNone
  #     )
  #   ])

  #   console.log $('#foreground-trigger-2').position().top

  #   setTimeout ->
  #     console.log $('#foreground-trigger-2').position().top
  #   , 4000

  #   top = $('#foreground-trigger-2').position().top

  #   scene2 = new ScrollScene(
  #     triggerElement: "#foreground-trigger-2"
  #     duration: $(window).height() + 300
  #     offset: -100
  #   ).setTween new TimelineMax().add([
  #     TweenMax.fromTo("#foreground-2", 1,
  #       top: top + 200
  #     ,
  #       top: top - 200
  #       ease: Linear.easeNone
  #     )
  #   ])
  #   controller.addScene([scene1, scene2])

  #   # show indicators (requires debug extension)
  #   scene1.addIndicators(
  #     zindex: 100,
  #     indent: 1
  #   )
  #   scene2.addIndicators(
  #     zindex: 100,
  #     indent: 1
  #   )

  # $scope.back = ->
  #   $location.path "/projects/index"
