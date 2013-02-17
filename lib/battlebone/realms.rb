module BattleBone
  module Realms
    def realm_index
      @client.realm
    end

    def realm_show(id)
      faux_id = id.to_i - 1
      @realms = self.realm_index.to_hash['realms']
      @realms[faux_id]
    end

    def auction_info(id)
      realm = self.realm_show(id)
      @client.auction(realm["slug"])
    end

    def auction_data(id)
      realm = self.realm_show(id)
      @client.auction_data(realm["slug"])
    end

  end
end
