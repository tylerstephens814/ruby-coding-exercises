#COMPLETED


require 'rspec'

string_array = [
  "Web IconHTML & CSS100%",
  "Command LineLearn the Command Line100%",
  "Ruby IconRuby50%",
  "Rails IconLearn Ruby on Rails100%",
  "Git IconLearn Git100%",
  "SassLearn Sass20%",
  "JQuery IconjQuery1%",
  "Angular JSLearn AngularJS 1.X100%",
  "Javascript IconLearn JavaScript55%"
]

class String
  def numeric?
    Integer(self) != nil rescue false
  end
end

def string_parser string_array
 final = []
 string_array.each do |sentence|
 cut = sentence.length - 2
  while sentence[cut].numeric? == true do
    cut -= 1
  end
  final << sentence[cut+1..sentence.length-2]
  
end
  real_final = final.map(&:to_i)
end


describe "String Parser" do
  it 'can take a string and output the correct values' do
    expect(string_parser(string_array)).to eq([100, 100, 50, 100, 100, 20, 1, 100, 55])
  end
end
