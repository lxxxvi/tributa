require 'open-uri'
require_relative 'html_to_tributa_table_transformer'

module Tributa
  URL = "http://www.estv2.admin.ch/steuerfuss/my_select_alle.php".freeze

  class Loader
    def self.call
      html = open(URL).read
      HtmlToTributaTableTransformer.new(html).to_tributa_table
    end
  end
end
