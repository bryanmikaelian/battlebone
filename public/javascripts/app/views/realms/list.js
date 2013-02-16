define(['backbone', 'app/collections/realms'], function(Backbone, RealmsCollection) {
  var RealmListView = Backbone.View.extend({
    el: $(".contents"),
    initialize: function() {
      this.collection = new RealmsCollection();
    },
    render: function() {
      var template = _.template( $("#realms").html(), {});
      this.$el.html(template)
    }
  });

  return RealmListView;

});
