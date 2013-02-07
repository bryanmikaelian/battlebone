requirejs.config({
  baseUrl: 'javascripts/lib',

  paths: {
    'jquery': 'http://ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min',
  },

});


require(["jquery"], function($) {
});

