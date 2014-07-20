class Customer
 

	def initialize(name)
		@name = name
		@order = []
	end

	def name
		@name
	end

	def order(*args)

		@order << args
	end

	

end