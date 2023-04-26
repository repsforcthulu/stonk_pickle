require './lib/stonk'

describe Pickle do
  let(:p) {Pickle.new}

  describe '#pick' do
    it "takes an array of 'prices' and returns an array of best buy date and best sell date" do
      expect(p.pick([17,3,6,9,15,8,6,1,10])).to eq([1, 4])
      expect(p.pick([30,15,20,2,4,10,15,12])).to eq([3, 6])
    end
  end
end
