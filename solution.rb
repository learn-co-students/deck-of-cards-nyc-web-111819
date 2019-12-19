class Deck
    attr_reader :cards
    def initialize
        @cards = []
        (Array(2..10)+["A","Q","K","J"]).each do |rank|
            ["Hearts","Clubs","Diamonds","Spades"].each do |suit|
                @cards << Card.new(suit, rank)
            end
        end
    end

    def choose_card
        index = rand(@cards.length)
        card = @cards[index]
        @cards.slice!(index)
        card
    end
end

class Card
    attr_reader :rank, :suit
    def initialize(suit, rank)
        @rank = rank
        @suit = suit
    end
end