module RBattlenet
  module Wow
    class Battlepet
      def self.find_abilities(id: id)
        uri = RBattlenet.
          base_uri("#{GAME}/battlePet/ability/#{id}?")

        RBattlenet.get(uri)
      end

      def self.find_species(species_id: species_id)
        uri = RBattlenet.
          base_uri("#{GAME}/battlePet/species/#{species_id}?")

        RBattlenet.get(uri)
      end

      def self.find_stats(species_id: species_id, level: level, breed_id: breed_id, quality_id: quality_id)
        stats = ["&level=#{level}",
                  "&breedId=#{breed_id}",
                  "&qualityId=#{quality_id}"].join

        queries = RBattlenet.merge_queries(stats)

        uri = RBattlenet.
          base_uri("#{GAME}/battlePet/stats/#{species_id}")

        RBattlenet.get(uri, queries)
      end
    end
  end
end

