#Complete Feb 6, 2017

require 'rspec'

def interval seconds
  loop do
    yield
    sleep seconds
  end
end

interval 2 do
  puts "hey there"
end