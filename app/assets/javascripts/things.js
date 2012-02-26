// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

jQuery(function() {
  $(".thing .actions").hide();

  $(".thing .detail").hover(function(e) {
    $(".actions", this).show();
  }, function() {
    $(".actions", this).hide();
  });
});

