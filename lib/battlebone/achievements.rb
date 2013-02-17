module BattleBone
  module Achievements
    def achievement_show(id)
      @client.achievement(id)
    end
  end
end
