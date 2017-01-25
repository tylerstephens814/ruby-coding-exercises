#Complete Jan 25, 2017

require 'rspec'

class String
  def alt_reverse
    rev = ""
    (self.length - 1).downto(0) {|x| rev << self[x]}
    rev
  end
end

describe 'Letter reversing' do
  it 'reverses the letters of a string without using the reverse method' do
    expect("Hi there".alt_reverse).to eq("ereht iH")
  end
end