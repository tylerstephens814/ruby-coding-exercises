#Complete Jan 24, 2017

require 'rspec'

class Array
  def odd_selector
    self.select{|x| x.odd? }
  end
end

describe 'Odd selector' do
  it 'given an array, it returns a collection of the odd elements' do
    expect(Array(1..10).odd_selector).to eq([1, 3, 5, 7, 9])
  end
end
