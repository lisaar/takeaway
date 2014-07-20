require 'dish'

describe Dish do
	let(:tortilla) {Dish.new(:name => "tortilla", :price => 4.00)}

	it 'is initialized with a name' do
		expect(tortilla).to have_name
	end

	it 'is initialized with a price' do
		expect(tortilla).to have_price
	end

	
end