require 'order'

describe Order do
	dishes = [{name: "Tortilla", price: 4.00}, 
				{name: "Paella", price: 4.50}]


	let(:francisco)  {Customer.new("Francisco")}
	let(:francisco_order) {Order.new(francisco, order)}
	let(:order) {double :order}
	
	it 'receives order from customer' do
		francisco.order dishes[0], dishes[1]
		expect(francisco_order.place).to eq [[{:name=>"Tortilla", :price=>4.0}, {:name=>"Paella", :price=>4.5}], [] ]
		
	end

	it 'calculates final price' do
		francisco.order dishes[0], dishes[1]
		francisco_order.place
		expect(francisco_order.price).to eq 8.50
	end

end