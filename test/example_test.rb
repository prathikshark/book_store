require 'minitest/autorun'

class ExampleTest < Minitest::Test
 def test_example
   @test = 'hello'
    assert_equal 4, 2 + 2
    puts "new tests"
 end
end