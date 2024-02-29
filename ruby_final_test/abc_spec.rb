require 'byebug'
require 'rspec'
require './ruby_final_test/hash_data.rb'

RSpec.describe "" do
  let(:input_menu) do
    {
      empanadas:
      {
        flavors: ["chicken", "potato", "steak", "veggie"],
        gluten_free: false,
        veg: false,
      },
      scones: {
        flavors: ["blueberry", "vanilla"],
        gluten_free: false,
        veg: true
      },
      parfaits: {
        flavors: ["blueberry", "strawberry", "cherry"],
        gluten_free: true,
        veg: true
      }
    }
  end

  let(:expected_data) do
    "Menu:\n"\
    "- chicken, potato, steak, and veggie empanadas (non gluten free) (non-veg)\n"\
    "- blueberry, and vanilla scones (non gluten free) (veg)\n"\
    "- blueberry, strawberry, and cherry parfaits (gluten free) (veg)\n"
  end

  it "hash" do
    data = HashData.new
    expect(data.input_data_hash(input_menu).inspect).to eq(expected_data.inspect)
  end
end