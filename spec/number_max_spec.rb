require "number_max"

describe "NumberMax" do 
  str = StringIO.new("aaa111bbb2222nnn555555")

  let(:numbers){ NumberMax.find_numbers(file: str, max: 3) }
 
  describe ".find_numbers" do
    it "get numbers and the length of the characters must not exceed 1000" do
      expect(numbers).to eq [555555, 2222, 111]
      expect(numbers[0].to_s.size).to be <= 1000
    end
  end
end

