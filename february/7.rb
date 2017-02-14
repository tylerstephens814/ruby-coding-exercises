#Complete Feb 14, 2017 <3

require 'rspec'

# def cloned_cycle(arr, i)
#   a = arr.to_a
#   (i-1).times do
#     arr.each do |e|
#       a << e
#     end
#   end
#   a
# end

def cloned_cycle(arr, i)
  arr.cycle(i).to_a
end

describe 'Cloned cycle' do
  it 'Iterates through an array a variable number of times and returns the full set of elements' do
    arr = (1..3)
    expect(cloned_cycle(arr, 3)).to eq([1, 2, 3, 1, 2, 3, 1, 2, 3])
  end
end