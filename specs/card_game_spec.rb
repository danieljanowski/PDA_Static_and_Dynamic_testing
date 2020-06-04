require ('minitest/autorun')
require ('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../card')
require_relative('../card_game')

class TestCardGame < Minitest::Test
    
    def setup
        @game = CardGame.new
        @card1 = Card.new("Diamonds", 4)
        @card2 = Card.new("Clubs", 10)
        @card3 = Card.new("Spades", 1)
        @cards = [@card1, @card2, @card3]
    end

    def test_card_is_ace 
        assert_equal(true, @game.checkforAce(@card3))
    end

    def test_card_is_not_ace
        assert_equal(false, @game.checkforAce(@card2))
    end

    def test_highest_card
        assert_equal(@card2, @game.highest_card(@card1, @card2))
    end

    def test_cards_total
        assert_equal("You have a total of 15", CardGame.cards_total(@cards))
    end
end
