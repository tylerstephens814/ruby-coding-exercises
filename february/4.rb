# Complete Feb 13, 2017

require 'rspec'

class Array
  def index_hash
    Hash[(0...self.size).zip self]
  end
end

describe 'Array to Hash converter' do
  it 'converts an array to a hash, with the keys being the index and the value being the element' do
    arr = %w{the quick brown fox}
    expect(arr.index_hash).to eq({0=>"the", 1=>"quick", 2=>"brown", 3=>"fox"})
  end
end