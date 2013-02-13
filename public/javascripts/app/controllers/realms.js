define(['backbone', 'app/views/realms/list'], function(Backbone, RealmListView) {
  var RealmsRouter = Backbone.Router.extend({
    routes: {
      "realms": "realms",
      "realms/:id": "realm"
    },

    initialize: function() {
      this.on('route:realms', function(realm) {
        var realm_list_view = new RealmListView();
        realm_list_view.render();
      });
    }

  });

  Backbone.history.start()
  

  return RealmsRouter;

});
