require 'battlenet'
require './lib/battlebone/realms'
require 'json'

module BattleBone

  class API
    include BattleBone::Realms

    attr_reader :client

    def initialize(region = nil)
      if region
        @client = Battlenet.new region
      else
        @client = Battlenet.new :us
      end
    end

    def realms
      self.realm_index.to_json
    end

    def realm(id)
      self.realm_show(id).to_json
    end

  end
end
