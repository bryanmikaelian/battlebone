module BattleBone
  module Items
    def item_data(id)
      @client.item(id)
    end
  end
end
