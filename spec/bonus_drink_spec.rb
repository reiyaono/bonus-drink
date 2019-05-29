require File.expand_path(File.dirname(__FILE__) + '/../bonus_drink')

describe BonusDrink do
  context 'when given ARVG' do
    it 'sould be expected num' do
      expect(BonusDrink.total_count_for(0)).to eq 0
      expect(BonusDrink.total_count_for(1)).to eq 1
      expect(BonusDrink.total_count_for(3)).to eq 4
      expect(BonusDrink.total_count_for(11)).to eq 16
      expect(BonusDrink.total_count_for(100)).to eq 149
    end
  end
end
