#Keeps track of whos turn it is
  class GameManager

    def initialize(players)
      @player1_score = 0
      @player2_score = 0
      @turns = 0
      @turn = Turn.new(players)
    end


    def next_turn
      @turn.next_turn
    end

    def current_player
      @turn.current_player
    end
  end