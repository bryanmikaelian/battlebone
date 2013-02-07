define(['backbone', 'app/collections/realms'], function(Backbone, RealmsCollection) {
  var RealmListView = Backbone.View.extend({
    el: $(".container"),
    initialize: function() {
      this.collection = new RealmsCollection();
    }
  });

  return RealmListView;

});
