#Complete Jan 27, 2017


require 'rspec'

module Tippy
  class Builder
    def initialize(total: '', gratuity: '')
     @total = total
     @gratuity = gratuity
    end

    def to_per (fig)
      if fig.is_a? Numeric
        return fig.to_f/100
      elsif 
        begin Float(fig).is_a? Numeric rescue false end
        return Float(fig)/100
      else
        case (fig.downcase)
          when "high" 
            return 0.25
          when "low" 
            return 0.15
          when "standard" 
            return 0.18
          else 
            return 0
        end  
      end
    end

    def generate
      @total += @total * to_per(@gratuity)
    end
  end
end

describe 'Tip Generator' do
  it 'Accurately generates a tip given string or integer input' do
    test_1 = Tippy::Builder.new(total: 100, gratuity: '23.5').generate
    test_2 = Tippy::Builder.new(total: 100, gratuity: 'high').generate
    test_3 = Tippy::Builder.new(total: 100, gratuity: 'LOW').generate
    test_4 = Tippy::Builder.new(total: 100, gratuity: 'standard').generate
    test_5 = Tippy::Builder.new(total: 100, gratuity: '18').generate
    test_6 = Tippy::Builder.new(total: 100, gratuity: 20).generate
    test_7 = Tippy::Builder.new(total: 100, gratuity: 0).generate

    expect(test_1).to eq(123.5)
    expect(test_2).to eq(125.0)
    expect(test_3).to eq(115.0)
    expect(test_4).to eq(118.0)
    expect(test_5).to eq(118.0)
    expect(test_6).to eq(120.0)
    expect(test_7).to eq(100.0)
  end
end
