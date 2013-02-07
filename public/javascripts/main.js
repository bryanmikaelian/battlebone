requirejs.config({

  paths: {
    'jquery': 'http://ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min',
    'underscore': 'lib/underscore/underscore-min',
    'backbone': 'lib/backbone/backbone-min',
    'app': 'app/app'
  },
  shim: {
    'backbone': {
      deps: ['underscore', 'jquery'],
      exports: 'Backbone'
    }
  }

});


require(["app"], function(App) {
  App.initialize();
});
