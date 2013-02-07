define(["backbone", "app/models/realm"], function(Backbone, Realm) {
  var Realms = Backbone.Collection.extend({
    model: Realm,
    url: "us.battle.net/api/wow/realms/status"
  });

  return Realms;

});
