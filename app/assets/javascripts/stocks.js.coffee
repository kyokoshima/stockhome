# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$('.choiced_unit').text $('#stock_unit').val()

$('#stock_unit').on 'keyup', ->
	$('.choiced_unit').text $(this).val()

# if $('#stock_max_quantity').val()
# 	$('#stock_quantity').slider('setAttribute', 'max', $('#stock_max_quantity').val())
# else
# 	$('#stock_quantity').slider('setAttribute', 'max', 100)

