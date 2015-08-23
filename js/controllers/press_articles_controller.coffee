augmentApp.controller 'PressArticlesIndexController', ($scope, $timeout, PressArticlesFactory, AlertsFactory) ->
  PressArticlesFactory.index().then (press_articles) ->
    $scope.press_articles = press_articles

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
    mobileBreakPoint: 600, # if the screen is not wider that this, remove the grid layout and stack the items
    resizable: {
       enabled: false,
    },
    draggable: {
       enabled: true, # whether dragging items is supported
    }
  };
