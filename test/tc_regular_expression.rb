require 'test/unit'
require 'lib/regular_expression'

class TestRegularExpression < Test::Unit::TestCase
  def setup
    @origen = RegularExpression.new("a")
    @origen1 = RegularExpression.new("b")
    @origen2 = RegularExpression.new("c")
    @origen3 = RegularExpression.new("d")

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
	assert_equal("b.c", @origen1.concat(@origen2).to_s)
	assert_equal("c.d", @origen2.concat(@origen3).to_s)
  end

   def test_simple_altenativa
        #Comprobar alternativa
        assert_equal("a|b", @origen.alt(@origen1).to_s)
	assert_equal("b|c", @origen1.alt(@origen2).to_s)
	assert_equal("c|d", @origen2.alt(@origen3).to_s)
  end

  def test_simple_kleen
        #Comprobar cierre de Kleen
        assert_equal("a*", (@origen.kleen).to_s)
	assert_equal("b*", (@origen1.kleen).to_s)
	assert_equal("c*", (@origen2.kleen).to_s)
  end


end
