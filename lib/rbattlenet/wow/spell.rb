module RBattlenet
  module Wow
    class Spell
      def self.find(id: id)
        uri = RBattlenet.
          base_uri("#{GAME}/spell/#{id}")

        RBattlenet.get(uri)
      end
    end
  end
end

