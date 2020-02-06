$LOAD_PATH.unshift File.expand_path("../lib", __dir__)
require 'tributa'
require "minitest/autorun"
require 'webmock/minitest'

class TributaTestBase < Minitest::Test
  include WebMock::API

  FIXTURES_DIRECTORY = Pathname.new('test/fixtures').freeze
  FIXTURES = {
    estv_gl_2011_2018: FIXTURES_DIRECTORY.join('estv_GL_2011-2018.html')
  }.freeze

  def stub_estv
    stub_request(:get, "http://www.estv2.admin.ch/steuerfuss/my_select_alle.php").
      with(
        headers: {
        'Accept'=>'*/*',
        'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
        'User-Agent'=>'Ruby'
        }).
      to_return(status: 200, body: fixtures(:estv_gl_2011_2018).read, headers: {})
  end

  def fixtures(key)
    FIXTURES.fetch(key)
  end
end
