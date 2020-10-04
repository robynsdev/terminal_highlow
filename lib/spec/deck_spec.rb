require 'rspec/autorun'
require_relative '../models/deck'

describe Deck do 
  # test for all cases of suits
  it 'should correctly convert deck.suit(1) to diamonds' do 
    deck = Deck.new
    expect(deck.suit(1)).to eq("diamonds")
  end

  it 'should correctly convert deck.suit(2) to clubs' do 
    deck = Deck.new
    expect(deck.suit(2)).to eq("clubs")
  end

  it 'should correctly convert deck.suit(3) to hearts' do 
    deck = Deck.new
    expect(deck.suit(3)).to eq("hearts")
  end

  it 'should correctly convert deck.suit(4) to spades' do 
    deck = Deck.new
    expect(deck.suit(4)).to eq("spades")
  end

  # test for all cases of rank
  it 'should correctly convert deck.rank(1) to 1' do 
    deck = Deck.new
    expect(deck.rank(1)).to eq(1)
  end

  it 'should correctly convert deck.rank(11) to Jack' do 
    deck = Deck.new
    expect(deck.rank(11)).to eq("Jack")
  end

  it 'should correctly convert deck.rank(12) to Queen' do 
    deck = Deck.new
    expect(deck.rank(12)).to eq("Queen")
  end

  it 'should correctly convert deck.rank(13) to King' do 
    deck = Deck.new
    expect(deck.rank(13)).to eq("King")
  end

  it 'should correctly convert deck.rank(14) to A' do 
    deck = Deck.new
    expect(deck.rank(14)).to eq("Ace")
  end

end