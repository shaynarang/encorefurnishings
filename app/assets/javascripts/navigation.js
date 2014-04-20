$(document).on('page:load', function() {
  $('.compressed').click(function(event) {
    event.preventDefault();
    $('.expanded').toggle();
  });
});
