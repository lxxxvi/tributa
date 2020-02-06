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
  end
end
