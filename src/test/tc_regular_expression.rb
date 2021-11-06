require 'test/unit'
require 'lib/regular_expression'

class TestRegularExpression < Test::Unit::TestCase
  def setup
    @origen = RegularExpression.new("a")
    @origen1 = RegularExpression.new("b")
  end

  def test_simple
     # Comprobar new, to_s
     assert_equal("a", RegularExpression.new("a").to_s)
     # Comprobar getter expresion 
     assert_equal("a", @origen.expresion)
  end

  def test_simple_concatenacion
	#Comprobar concatenacion
	assert_equal("a.b", @origen.concat(@origen1).to_s)
  end
end
