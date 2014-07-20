class Order
	attr_reader :customer, :order

	def initialize(customer)
		@customer = customer
		@order = []
	end

	def place
		@order = customer.order
	end


	def price
		variable = @order.flatten.map {|dish| dish.values_at(:price)}
		variable.flatten.inject {|sum, value| sum + value}
	end
end