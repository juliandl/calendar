class Calendar.Models.Event extends Backbone.Model
  paramRoot: 'event'

  defaults:
    name: null
    description: null
    start: null
    end: null
    host: null
    location: null

class Calendar.Collections.EventsCollection extends Backbone.Collection
  model: Calendar.Models.Event
  url: '/events'
