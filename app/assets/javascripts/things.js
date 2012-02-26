// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

jQuery(function() {
  // Auto complete copy and move boxes
  $(".copy_to_thing_name").autocomplete({
    source: "/things/search",
    select: function(event, ui) {
      var form = $(this).parents("form");
      var id_field = form.find(".copy_to_thing_id");

      if( ui.item ) {
        id_field.val(ui.item.id);
        form.submit();
      } else {
        id_field.val("");
      }
    }
  });

  // Show actions when you roll over things
  // $(".thing .actions").hide();

  // var allow_hover = true;

  // $(".thing .detail").hover(function(e) {
  //   if( allow_hover ) {
  //     $(".actions", this).show();
  //   }
  // }, function() {
  //   if( allow_hover ) {
  //     $(".actions", this).hide();
  //   }
  // });

  // $(".thing .detail input").focus(function() {
  //   allow_hover = false;
  // });

  // $(".thing .actions input").blur(function() {
  //   allow_hover = true;
  //   $(this).parents(".actions").hide();
  // });
});

