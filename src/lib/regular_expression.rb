

class RegularExpression

	attr_reader :expresion

	def initialize(expresion)

	  @expresion = expresion

	end
	def concat(aux)
	
	  return RegularExpression.new(@expresion + "." + aux.expresion)

	end
	def alt(aux)

	  return RegularExpression.new(@expresion + "|" + aux.expresion)

	end
	def to_s
	
	  return "#{expresion}"

	end
end
