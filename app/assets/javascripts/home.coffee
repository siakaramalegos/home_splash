# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


$(document).ready ->
  setInterval 'updateClock()', 1000

pad = (number) ->
  if number < 10
    "0" + number
  else
    number

@updateClock = ->
  currentTime = new Date
  currentHours = currentTime.getHours()
  currentMins = pad(currentTime.getMinutes())
  currentSecs = pad(currentTime.getSeconds())

  # Change to non-military time
  twelveHours = currentHours % 12
  twelveHours = if twelveHours == 0 then 12 else pad(twelveHours)

  currentTimeString = "#{twelveHours}:#{currentMins}"
  currentDateString = $.format.date(currentTime, "MMMM d, yyyy")

  $('#date').html currentDateString
  $('#clock').html currentTimeString