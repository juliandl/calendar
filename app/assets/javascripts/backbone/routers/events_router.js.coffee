class Calendar.Routers.EventsRouter extends Backbone.Router
  initialize: (options) ->
    @events = new Calendar.Collections.EventsCollection()
    @events.reset options.events

  routes:
    "new"      : "newEvent"
    "index"    : "index"
    ":id/edit" : "edit"
    ":id"      : "show"
    ".*"        : "index"

  newEvent: ->
    @view = new Calendar.Views.Events.NewView(collection: @events)
    $("#events").html(@view.render().el)

  index: ->
    @view = new Calendar.Views.Events.IndexView(events: @events)
    $("#events").html(@view.render().el)

  show: (id) ->
    event = @events.get(id)

    @view = new Calendar.Views.Events.ShowView(model: event)
    $("#events").html(@view.render().el)

  edit: (id) ->
    event = @events.get(id)

    @view = new Calendar.Views.Events.EditView(model: event)
    $("#events").html(@view.render().el)
