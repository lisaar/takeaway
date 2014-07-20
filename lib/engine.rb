class Engine
	
	attr_reader :dishes, :order, :place_order

	def initialize
		@dishes = [{name: "Tortilla", price: 4.00}, 
					{name: "Paella", price: 4.50}]
		@order = []
	end


	def welcome
		puts "Bienvenido. Before you make your order please write your name and press RETURN"
		customer = customer_input
		@name = customer
	end

	def customer_input
		gets.chomp
	end

	def greet_customer
		puts "Gracias #{@name}. Please press RETURN to browse the menu."
	end

	def initialize_customer
		Customer.new(@name)
	end



	def has_a_menu?
		Menu.new(dishes).print_dishes
	end

	def request_order
		puts "Please write the name the dish you would like to order then press RETURN"
		order = customer_input
		@order << order
	end

	def create_order
		Order.new(@name, @order)
	end

	def calcualate_price
		
	end
end