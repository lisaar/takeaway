class Menu


	attr_reader :dishes

	dishes = [{name: "Tortilla", price: 4.00}, 
				{name: "Paella", price: 4.50}]
	
	def initialize(dishes)
		@dishes = dishes
	end	


	def dishes
		@dishes
	end
end