class Couch
	#attr_accessor :pillows, :cushions, :dogs

	def initialize(pillows, cushions, dogs)
		@pillows = pillows
		@cushions = cushions
		@dogs = dogs
	end

	[:pillows, :cushions, :dogs].each do |s|

		define_method("how_many_#{s}") do
			instance_variable_get("@#{s}").count
		end

		define_method s do
			instance_variable_get("@#{s}")
		end

		define_method "#{s}=" do |arg|
			instance_variable_set("@#{s}", arg)
		end


	end
end
