describe Deck do 
  describe '#suit'
    it 'should correctly convert deck.suit(3) to hearts' do 
      deck = Deck.new
      expect(deck.suit(3)).to eq("hearts")
    end
  end
end