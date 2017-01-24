#Complete Jan 24, 2017

require 'rspec'

def sum_generator num
  (0..num).inject{|sum, a| sum + a}
end

describe 'Dynamic sum' do
  it 'Outputs a sum of digits, ranging from 0 through the argument value' do
    expect(sum_generator 10).to eq(55)
  end
end
