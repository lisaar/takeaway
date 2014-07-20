require 'dish'

describe Dish do
	let(:tortilla) {Dish.new(:name => "tortilla")}
	it 'is initalized with a name' do
		expect(tortilla).to have_name
	end
end