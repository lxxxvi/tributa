require 'json'

module Tributa
  class Table::Row
    attr_reader :canton, :year, :community, :canton_rate, :community_rate, :reformed_rate, :catholic_rate

    def initialize(columns = [])
      @canton,
      @year,
      @community,
      @canton_rate,
      @community_rate,
      @reformed_rate,
      @catholic_rate = columns
    end

    def as_json
      {
        canton: canton,
        year: year,
        community: community,
        canton_rate: canton_rate,
        community_rate: community_rate,
        reformed_rate: reformed_rate,
        catholic_rate: catholic_rate
      }
    end

    def to_json
      as_json.to_json
    end
  end
end
