#Complete January 24, 2017

# Rational < Numeric,  .to_r converts a string fraction to its rational fraction
# .public_send Invokes the method identified by symbol, passing it any arguments specified. Unlike send, #public_send calls public methods only. When the method is identified by a string, the string is converted to a symbol.


require 'rspec'

def fraction_calculator fraction_one, fraction_two, operator
  (fraction_one.to_r.public_send(operator, fraction_two.to_r)).to_s
end 

describe 'Fraction multiplication' do
  it 'can multiply two fractions and output the value in a string based fraction format' do
    expect(fraction_calculator("1/3", "2/4", "*")).to eq("1/6")
    expect(fraction_calculator("1/3", "2/4", "/")).to eq("2/3")
    expect(fraction_calculator("1/3", "2/4", "+")).to eq("5/6")
    expect(fraction_calculator("1/3", "2/4", "-")).to eq("-1/6")
  end
end