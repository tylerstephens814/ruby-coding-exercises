#Complete Jan 23, 2017


require 'rspec'

def increment_value str
  inc = str
  inc << str[-1].next
end

describe 'Increment string value sequence' do
  it 'appends the next item in the sequence of a string' do
    expect(increment_value 'abcde').to eq('abcdef')
    expect(increment_value '123').to eq('1234')
  end
end

