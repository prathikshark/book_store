require 'minitest/autorun'

class SampleTest < Minitest::Test
 def test_example
   @test = 'hello'
    assert_equal 4, 2 + 2
    puts "hiii"
 end
end