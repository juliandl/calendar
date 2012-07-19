# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Event.delete_all

service = GCal4Ruby::Service.new
service.authenticate("user@gmail.com", "password")

calendars = service.calendars
calendars.each do |cal|
	events = cal.events

	events.each do |event|
		if event.start_time > Time.now
			Event.create(name: event.title,
				description: event.content,
				start: event.start_time,
				end: event.end_time,
				location: event.where)
		end
	end
end
