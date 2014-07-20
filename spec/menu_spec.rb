require 'menu'

describe Menu do

	dishes = [{name: "Tortilla", price: 4.00}, 
				{name: "Paella", price: 4.50}]

	let(:menu) {Menu.new(dishes)}


	it 'has an array of dishes' do #each dish is a hash with a name and price
		expect(menu.dishes).to eq [{name: "Tortilla", price: 4.00}, {name: "Paella", price: 4.50}]
	end

	it 'prints dishes' do
		expect(menu.print_dishes).to eq [{:name=>"Tortilla", :price=>4.0}, {:name=>"Paella", :price=>4.5}]
	end
	
end