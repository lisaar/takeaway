class Dish
	attr_reader :name

	def initialize(options = {})
		@name = options.fetch(:name, name)
	end

	def has_name?
		@name
	end
end