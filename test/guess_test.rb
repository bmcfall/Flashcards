gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/card'
require_relative '../lib/guess'
require 'pry'

class GuessTest < Minitest::Test

  def test_a_guess_exists
    card = Card.new("What is the capital of Alaska?", "Juneau")
    guess = Guess.new("Juneau", card)

    assert_instance_of Guess, guess
  end

  def test_guess_response
    card = Card.new("What is the capital of Alaska?", "Juneau")
    guess = Guess.new("Juneau", card)

    assert_equal "Juneau", guess.response
  end

  def test_guess_card_1
    card = Card.new("What is the capital of Alaska?", "Juneau")
    guess = Guess.new("Juneau", card)

    assert_equal card, guess.card
  end

  def test_guess_card_2
    card = Card.new("Which planet is closest to the sun?", "Mercury")
    guess = Guess.new("Mercury", card)

    assert_equal card, guess.card
  end

  def test_correct_is_true_1
    card = Card.new("What is the capital of Alaska?", "Juneau")
    guess = Guess.new("Juneau", card)

    assert_equal true, guess.correct?
  end

  def test_correct_is_true_2
    card = Card.new("Which planet is closest to the sun?", "Mercury")
    guess = Guess.new("Mercury", card)

    assert_equal true, guess.correct?
  end

  def test_correct_is_false
    card = Card.new("What is the capital of Alaska?", "Juneau")
    guess = Guess.new("Anchorage", card)

    assert_equal false, guess.correct?
  end

  def test_correct_feedback
    card = Card.new("What is the capital of Alaska?", "Juneau")
    guess = Guess.new("Juneau", card)

    assert_equal "Correct!", guess.feedback
  end

  def test_incorrect_feedback
    card = Card.new("Which planet is closest to the sun?", "Mercury")
    guess = Guess.new("Saturn", card)

    assert_equal "Incorrect.", guess.feedback
  end
end
