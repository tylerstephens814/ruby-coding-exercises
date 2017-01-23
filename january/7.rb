#Complete Jan 23, 2017

require 'rspec'

menu = {
  'appetizers': ['Chips', 'Quesadillas', 'Flatbread'],
  'entrees': ['Steak', 'Chicken', 'Lobster'],
  'desserts': ['Cheesecake', 'Cake', 'Cupcake']
}

def daily_special hash
  category = [:appetizers, :entrees, :desserts]
  hash[category[rand(0...3)]][rand(0...3)]
end

describe 'Nested hash element selector' do
  it 'selected a random element from the set of nested arrays' do
    expect(daily_special(menu).class).to eq(String)
  end
end
