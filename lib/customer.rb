class Customer
 	include Notifications

	def initialize(name)
		@name = name
		@order = []
		@mobile = "+449752985537"

	end

	def name
		@name
	end

	def mobile
		@mobile
	end

	def order(*args)

		@order << args
	end



end