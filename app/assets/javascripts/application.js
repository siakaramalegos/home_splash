// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$(document).ready(function() {
    // This code will have h2 appear when hovering on h1 and then disappear when mousing away

    $(".quote-box").hover(function() {
      $("#author").fadeIn( 500 );
    }, function(){
      $("#author").fadeOut( 200 );
    });
});

// Moved this stuff to home.coffee:

// $(document).ready(function() {
//     // Make it update every second
//     setInterval('updateClock()', 1000);
// });

// function updateClock() {
//     var currentTime = new Date();
//     var currentHours = pad(currentTime.getHours());
//     var currentMins = pad(currentTime.getMinutes());
//     // var currentSecs = pad(currentTime.getSeconds());
//     var currentDay = currentTime.getDate();
//     var currentMonth = currentTime.getMonth();

//     // AM or PM?
//     var timeOfDay = (currentHours < 12) ? "AM" : "PM";

//     // Convert to 12-hour clock
//     var twelveHour = pad(currentHours % 12);

//     // Fix midnight and noon
//     twelveHour = (twelveHour === 0) ? "12" : twelveHour ;

//     var currentTimeString = twelveHour + ":" + currentMins;
//     // var currentDateString = currentMonth + "/" + currentDay;

//     $("#clock").html(currentTimeString);
//     // $("#date").html(currentDateString);
// }

// function pad(number) {
//     var paddedNumber;
//     if (number < 10) {
//         paddedNumber = "0" + number;
//     } else {
//         paddedNumber = number;
//     }
//     return paddedNumber;
// }