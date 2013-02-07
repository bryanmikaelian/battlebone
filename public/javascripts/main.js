requirejs.config({
  urlArgs: "bust=" + (new Date()).getTime(),


  paths: {
    'jquery': 'http://ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min',
    'underscore': 'lib/underscore/underscore-min',
    'backbone': 'lib/backbone/backbone-min',
    'controllers/base': 'app/controllers/base'
  },
  shim: {
    'backbone': {
      deps: ['underscore', 'jquery'],
      exports: 'Backbone'
    }
  }

});


require(["app/app"], function(App) {
  App.initialize();
});
