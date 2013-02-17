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
      return bad_request if id.to_i < 1
      self.realm_show(id.to_i).to_json
    end

    def realm_auction
      not_found
    end

    def realm_auction_info(id)
      return bad_request if id.to_i < 1
      self.auction_info(id.to_i).to_json
    end

    def realm_auction_show_data(id)
      return bad_request if id.to_i < 1
      self.auction_data(id.to_i).to_json
    end

    protected

    def bad_request
      400
    end

    def not_found
      404
    end

  end
end
