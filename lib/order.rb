class Order
	attr_reader :customer, :order

	def initialize(customer, order)
		@customer = customer
		@order = order
	end

	def place
		@order = customer.order
	end


	def price
		variable = @order.flatten.map {|dish| dish.values_at(:price)}
		variable.flatten.inject {|sum, value| sum + value}
	end
end