# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery ($) ->
	toggleInfo = ->
		if ($(@).find('.moreInfo').is(':hidden'))
			$(".list_item .moreInfo").slideUp('fast')
			$(@).find('.moreInfo').slideToggle('fast')

	$(".list_item").click toggleInfo

