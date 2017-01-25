#Complete Jan 25, 2017

require 'rspec'

def array_rotation arr, num
  num.times do 
    arr.push(arr.shift)
  end
  arr
end

describe 'Array index change' do
  it 'Rotates the index values for each of the array elements' do
    expect(array_rotation([1, 2, 3], 2)).to eq([3, 1, 2])
  end
end

