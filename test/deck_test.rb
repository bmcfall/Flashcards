gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/card'
require_relative '../lib/guess'
require_relative '../lib/deck'
require 'pry'

class DeckTest < Minitest::Test

  def test_a_deck_is_an_array
    deck = Array.new

    assert_equal [], deck
  end

  def test_insert_cards_in_array
    card_1 = Card.new("What is the capital of Alaska?", "Juneau")
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars")
    card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west")

    deck = Deck.new([card_1, card_2, card_3])

    assert_equal [card_1, card_2, card_3]
  end

end
