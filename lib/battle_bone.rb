require 'battlenet'
require './lib/battlebone/realms'

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
      self.realm_index
    end

    def realm(id)
      self.realm_show(id)
    end

  end
end
