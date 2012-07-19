Calendar.Views.Events ||= {}

class Calendar.Views.Events.EventView extends Backbone.View
  template: JST["backbone/templates/events/event"]

  events:
    "click .destroy" : "destroy"

  tagName: "li"

  className: "list_item"

  destroy: () ->
    @model.destroy()
    this.remove()

    return false

  render: ->
    $(@el).html(@template(@model.toJSON() ))
    return this
