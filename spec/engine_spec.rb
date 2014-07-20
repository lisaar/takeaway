require 'engine'
require 'menu'
require 'order'
describe Engine do 

	
	
	let(:engine) {Engine.new}
	let(:customer_input) {double :Francisco}
	let(:customer) {Customer.new("Francisco")}
	let(:order) {Order.new("Francisco", order1)}
	let(:order1) {double :order}
	

	it 'asks the customer for his name' do
		expect(engine).to receive(:puts).and_return("Bienvenido. Before you make your order please write your name and press RETURN")
		engine.welcome
	end

	it 'takes customer input' do
		expect(engine).to receive(:gets).and_return("Francisco")
		engine.customer_input
	end

	it 'welcomes names customer and asks them to browse menu' do
		expect(engine).to receive(:gets).and_return("Francisco")
		expect(engine.customer_input).to eq ("Francisco")
		expect(engine).to receive(:puts).and_return("Gracias Francisco. Please press RETURN to browse the menu.")
		engine.greet_customer
	end

	it 'creates a new customer with that name' do
		engine.welcome
		expect(engine).to receive(:initialize_customer).and_return(customer)
		engine.initialize_customer
	end

	it 'prints the menu of dishes' do
		dishes = [{name: "Tortilla", price: 4.00}, 
				{name: "Paella", price: 4.50}]
		expect(engine).to have_a_menu
	end

	it 'asks customer to select dishes they wish to order' do
		expect(engine).to receive(:puts).and_return("Please write the name of each dish you would like to order then press RETURN")
		engine.request_order
	end


	it 'initalizes a new order' do
		expect(engine).to receive(:create_order).and_return(order)
		engine.create_order
	end

	it 'calls order class method to calcualte a final price' do
		
	end
end



# 1. get customer name -> @name
# 2. show customer the list of dishes
# 3. ask customer to select disehs to order -> @order
# 4. ask customer to place order -> order.place
# 5. sk customer to put in amount to pay -> raise error if it doesn't equal order.price
# 6. send SMS