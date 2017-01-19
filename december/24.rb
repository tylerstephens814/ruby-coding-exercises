#Completed Jan 19, 2017

require 'rspec'

def new_max array_of_elements
  array_of_elements.inject{|a, b| a > b ? a : b}
end

describe 'New Max method' do
  it 'returns the max value from an array efficiently' do
    test_array = [2, 4, 10, 3, 1]
    expect(new_max(test_array)).to eq(10)
  end
end
