require 'battlenet'
require 'json'
require './lib/battlebone/realms'
require './lib/battlebone/achievements'
require './lib/battlebone/items'

module BattleBone

  class API
    include BattleBone::Achievements
    include BattleBone::Realms
    include BattleBone::Items

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

    def realm_character(params)
      return bad_request unless params[:id] && params[:name]
      self.character_data(params[:id].to_i, params[:name], params[:fields]).to_json
    end

    def items
      return processed_no_content
    end

    def item(id)
      self.item_data(id.to_i).to_json
    end

    protected

    def bad_request
      400
    end

    def not_found
      404
    end

    def processed_no_content
      204
    end

  end
end
