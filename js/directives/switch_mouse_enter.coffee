augmentApp.directive 'switchMouseEnter', () ->
  link: (scope, element, attrs) ->
    item_thumbnail = element.find(".item-thumbnail")
    item_description = element.find(".item-description")
    element.bind "mouseenter", ->
      item_thumbnail.hide()
      item_description.css('display', 'table')
      item_description.css('background', scope.getDomainColor(attrs.domain))

    element.bind "mouseleave", ->
      item_description.css('display', 'none')
      item_thumbnail.show()
