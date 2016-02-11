module RBattlenet
  module Wow
    class Character
      def self.find(name: name, realm: realm, fields: nil)
        fields = RBattlenet.parse_fields(fields)
        realm =  RBattlenet.parse_spaces(realm)
        queries = RBattlenet.merge_queries(fields)

        uri = RBattlenet.
          base_uri("#{GAME}/character/#{realm}/#{name}")

        RBattlenet.get(uri, queries)
      end
    end
  end
end

