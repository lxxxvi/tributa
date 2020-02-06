module Tributa
  class Table
    attr_reader :rows

    def initialize(rows)
      @rows = rows
    end

    def find_all_by(canton:, community:, year:)
      rows.find_all do |row|
        row.canton == canton &&
          row.community == community &&
          row.year == year.to_s
      end
    end
  end
end
