requirejs.config({
  baseUrl: 'javascripts/lib',

  paths: {
    'jquery': 'http://ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min',
    'underscore': 'underscore/underscore-min',
    'backbone': 'backbone/backbone-min'
  },
  shim: {
    'backbone': {
      deps: ['underscore', 'jquery'],
      exports: 'Backbone'
    }
  }

});


require(["jquery", "underscore", "backbone"], function($, _, Backbone) {
});

