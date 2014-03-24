window.fbAsyncInit = function() {
  FB.init({
    appId: '<%= ENV["FACEBOOK_APP_ID"] %>',
    cookie: true
  });
  $('#sign_in').click(function(e) {
    e.preventDefault();
    return FB.login(function(response) {
      if (response.authResponse) {
        $('.fb-like').show();
        return window.location = '/auth/facebook/callback';
      }
    });
  });
  return $('#sign_out').click(function(e) {
    FB.getLoginStatus(function(response) {
      if (response.authResponse) {
        $('.fb-like').hide();
        return FB.logout();
      }
    });
    return true;
  });
};

(function(d, s, id) {
  var fjs, js;
  js = void 0;
  fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) {
    return;
  }
  js = d.createElement(s);
  js.id = id;
  js.src = "//connect.facebook.net/en_US/all.js#xfbml=1&appId=1402788286655281";
  fjs.parentNode.insertBefore(js, fjs);
})(document, "script", "facebook-jssdk");

if (window.location.hash && window.location.hash == '#_=_') {
  window.location.hash = '';
  history.pushState('', document.title, window.location.pathname);
}
