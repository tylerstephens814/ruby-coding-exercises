#Complete Feb 1, 2017

require 'rspec'
require 'date'

def months
  @list = []
  (1..12).each do |m| 
    @list << Date::MONTHNAMES[m]
  end
  @list
end

describe 'Month generator' do
  it 'returns the full list of months for a year as an array' do
    expect(months).to eq(["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"])
  end
end

