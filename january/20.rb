#Complete Jan 26, 2017

require 'rspec'

class Array
  def value_included? value
    self.each do |x|
      x.each do |k, v|
        return true if v == value
      end
    end
    return false
  end
end


describe 'Collection search' do
  it 'checks to see if a value is included in any number of hashes nested inside an array' do
    books = [
      {
        :title => 'Fountainhead',
        :author => 'Ayn Rand'
      },
      {
        :title => 'Deep Work',
        :author => 'Cal Newport'
      }
    ]

    expect(books.value_included? 'Deep Work').to eq(true)
    expect(books.value_included? 'Something Else').to eq(false)
  end
end
