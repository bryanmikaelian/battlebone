module BattleBone
  module Realms
    def realm_index
      @client.realm
    end

    def realm_show(id)
      faux_id = id.to_i - 1
      @realms = self.index.to_hash['realms']
      @realms[faux_id].to_json
    end
  end
end
