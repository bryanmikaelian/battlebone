require 'battlenet'

module BattleBone

  class API

    attr_reader :client

    def initialize(region = nil)
      if region
        @client = Battlenet.new region
      else
        @client = Battlenet.new :us
      end
    end

    def realms
      @client.realm
    end
  end
end
