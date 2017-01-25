#Complete Jan 20, 2017


require 'rspec'

class Hash
  def param_converter
    pieces = []
    string = ""
    self.each do |a, b|
      pieces << [a.to_s, b].join('=')
      string = pieces.join('&')
    end
    string
  end
end

describe 'HTML Param Converter' do
  it 'Adds an HTML param converter to the Hash class' do
    hash = { :topic => "baseball", :team => "astros" }
    expect(hash.param_converter).to eq('topic=baseball&team=astros')
  end
end

# self.map {|i| i * "="} * "&" JORDAN HUDGENS SOLUTION