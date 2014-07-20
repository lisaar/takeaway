class Menu

	
	def initialize(dishes)
		@dishes = dishes
	end	


	def dishes
		@dishes
	end

	def print_dishes
		dishes.each {|dish| dish.each{|k, v| puts "#{v}"}}
	end

end