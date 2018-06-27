# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).ready ->
  send_request = ->
    if $('form').attr('action') == '/convert'
      $.ajax '/convert',
        type: 'GET'
        dataType: 'json'
        data: {
                source_currency: $("#source_currency").val(),
                target_currency: $("#target_currency").val(),
                amount: $("#amount").val()
        }
        error: (jqXHR, textStatus, errorThrown) ->
          alert textStatus
        success: (data, text, jqXHR) ->
          $('#result').val(data.value)
      return false;

  $('form #amount').keyup ->
    send_request()

  $('form #amount').change ->
    send_request()

  $('form #target_currency').change ->
    send_request()  

  $('form #source_currency').change ->
    send_request()

  $('button#switch_currencies').click ->
    current=$("#source_currency").val()
    destination=$("#target_currency").val()

    $("#source_currency").val(destination)
    $("#target_currency").val(current)

    if ($("#amount").val() )
      send_request() 