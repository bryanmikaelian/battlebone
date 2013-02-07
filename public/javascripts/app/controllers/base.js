define(['backbone', 'app/controllers/realms'], function(Backbone, RealmsRouter) {
  var BaseRouter = Backbone.Router.extend({
  });

  var initialize = function() {
    var realms_router = new RealmsRouter;
  };

  return {
    initialize: initialize
  };
});
