$(document).on('page:load', function() {
  $('.compressed').click(function(event) {
    event.preventDefault();
    $(this).toggle();
    $('.expanded').fadeToggle("medium", "swing");
  });
});
