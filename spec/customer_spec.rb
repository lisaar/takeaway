require 'customer'

describe Customer do

	dishes = [{name: "Tortilla", price: 4.00}, {name: "Paella", price: 4.50}]


	let(:francisco) {Customer.new("Francisco")}

	it 'is initalized with a name' do
		expect(francisco.name).to eq "Francisco"
	end

	it 'selects a dish to order' do
		francisco.order dishes[0], dishes[1]
		expect(francisco.order).to eq [[{:name=>"Tortilla", :price=>4.0}, {:name=>"Paella", :price=>4.5}], [] ]
	end


end