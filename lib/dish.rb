class Dish
	attr_reader :name, :price

	def initialize(options = {})
		@name = options.fetch(:name, name)
		@price = options.fetch(:price, price)
	end

	def has_name?
		@name
	end

	def has_price?
		@price
	end
end