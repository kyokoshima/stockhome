# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
	$('.category-id').on 'click', ->
		location.href = $(this).attr('href')
	$('td').on 'click', ->
		$(this).siblings('td').first().children('.category-id').triggger('click')
