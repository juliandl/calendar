# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery ($) ->
	toggleInfo = ->
		$(".list_item .moreInfo").slideUp('fast')
		console.log $(@).find('.moreInfo')
		$(@).find('.moreInfo').slideToggle('fast')

	$(".list_item").click toggleInfo

