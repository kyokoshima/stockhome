# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$('#stock_quantity').slider({
	'handle': 'squqre',
	'value': 0
});

$('#stock_max_quantity').on 'change', () ->
	val = $(this).val()
	val = 100 unless isFinite(val)

	$('#stock_quantity')
		.slider('setAttribute', 'max', val)
		.slider('setValue', parseInt(val))

$('#stock_unit').on 'keyup', ->
	$('#choiced_unit').text $(this).val()

# if $('#stock_max_quantity').val()
# 	$('#stock_quantity').slider('setAttribute', 'max', $('#stock_max_quantity').val())
# else
# 	$('#stock_quantity').slider('setAttribute', 'max', 100)

