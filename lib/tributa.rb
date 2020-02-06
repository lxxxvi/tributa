require "tributa/loader"
require "tributa/version"

module Tributa
  class Error < StandardError; end

  def self.load
    Tributa::Loader.call
  end
end
