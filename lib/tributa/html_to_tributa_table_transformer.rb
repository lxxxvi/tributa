require 'nokogiri'
require_relative 'table'
require_relative 'table/row'

module Tributa
  class HtmlToTributaTableTransformer
    attr_reader :html

    def initialize(html)
      @html = html
    end

    def to_tributa_table
      Tributa::Table.new(rows)
    end

    private

    def nhtml
      @nhtml ||= Nokogiri::HTML(sanitize_html)
    end

    def rows
      nokogiri_rows.map(&method(:to_tributa_table_row))
    end

    def nokogiri_rows
      nhtml.xpath('//table//tr')[2..]
    end

    def sanitize_html
      @sanitize_html ||= html[/<table class=.rahmen. width=.950.>(.*)<\/table><BR><BR>/i].gsub(/<br><br>$/i, '')
    end

    def to_tributa_table_row(nokogiri_row)
      values = nokogiri_row.xpath('td').map(&:text)
      Tributa::Table::Row.new(values)
    end
  end
end
