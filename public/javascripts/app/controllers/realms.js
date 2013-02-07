define(['backbone', 'app/views/realms/list'], function(Backbone, RealmListView) {
  var RealmsRouter = Backbone.Router.extend({
    routes: {
      "*actions": "defaultRoute"
    },

    initialize: function() {
      this.on('route:defaultRoute', function(realm) {
        var realm_list_view = new RealmListView();
        realm_list_view.render();
      });
    }

  });

  Backbone.history.start()
  

  return RealmsRouter;

});
