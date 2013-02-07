define(["backbone", "controllers/base"], function(Backbone, BaseRouter) {
  var initialize = function() {
    BaseRouter.initialize();
  }

  return {
    initialize: initialize
  }
});
