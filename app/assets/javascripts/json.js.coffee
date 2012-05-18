# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(document).ready ()->
    $('#convert').click (event) ->
        json = $('#input').val()
        $.post "/pretty", {input: json}, (data)->
            $('#output').html data