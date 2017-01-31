#Complete Jan 31, 2017

require 'rspec'
require 'date'

def day_counter date1 = '2004-7-1' , date2 = '2016-12-25'
  (Date.parse(date2) - Date.parse(date1)).to_i
end

describe 'Day counter' do
  it 'counts the days between Christmas in 2016 and July 1, 2004' do
    expect(day_counter).to eq(4560)
  end
end
