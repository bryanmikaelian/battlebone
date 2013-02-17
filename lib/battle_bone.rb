require 'battlenet'
require 'json'
require './lib/battlebone/realms'
require './lib/battlebone/achievements'

module BattleBone

  class API
    include BattleBone::Achievements
    include BattleBone::Realms

    attr_reader :client

    def initialize(region = nil)
      if region
        @client = Battlenet.new region
      else
        @client = Battlenet.new :us
      end
    end

    def achievement(id)
      self.achievement_show(id).to_json
    end

    def realms
      self.realm_index.to_json
    end

    def realm(id)
      self.realm_show(id).to_json
    end

    def realm_auction(id)
      self.realm_auction_info(id).to_json
    end

    def realm_auctions(id)
      self.realm_auction_data(id).to_json
    end

  end
end
