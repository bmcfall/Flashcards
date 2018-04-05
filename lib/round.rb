class Round

attr_reader :deck,
            :guesses

  def initialize(deck)
    @deck = deck
    @guesses = []
  end

  def current_card
    deck.cards.first
  end

  def record_guess(response)
    Guess.new(response, current_card)
  end

  def record_guess(card)
    Guess.new(card, current_card)
  end
end
