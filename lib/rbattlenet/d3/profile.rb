module RBattlenet
  module D3
    class Profile
      def self.find_career(battletag: battletag)
        uri = RBattlenet.base_uri("#{GAME}/profile/#{battletag}/")

        RBattlenet.get(uri)
      end

      def self.find_hero(battletag: battletag, id: id)
        uri = RBattlenet.base_uri("#{GAME}/profile/#{battletag}/hero/#{id}")

        RBattlenet.get(uri)
      end
    end
  end
end
