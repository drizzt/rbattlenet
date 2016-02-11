module RBattlenet
  module Wow
    class Quest
      def self.find(id: id)
        uri = RBattlenet.
          base_uri("#{GAME}/quest/#{id}")

        RBattlenet.get(uri)
      end
    end
  end
end

