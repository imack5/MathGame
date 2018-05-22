require './Player.rb'
require './Question.rb'
require './Turn.rb'
require './GameManager.rb'

#Where all the game logic is stored
class Game

  def initialize
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")


    @player2_score = [0, 0];

    @current_player = @player1

    @players = [@player1, @player2]
    @game_manager = GameManager.new(@players)
  end

  def game_over?
    !@players[0].is_alive || !@players[1].is_alive
  end

  def winner
    if @players[0].is_alive
      return @players[0]
    else
      return @players[1]
    end
  end

  def run

    while not game_over?

      puts
      puts "-------- NEW TURN --------"
      puts

      question = QuestionManager.new()
      question.new_question
      puts "#{@game_manager.current_player.name}: #{question.current_question}"
      guess = gets.chomp

      if(question.is_right(guess))
        @current_player.right_answer
        puts "Thats right!"

      else
        @current_player.wrong_answer
        puts "Oof thats wrong"
      end

      puts "Player 1: #{@player1.score[0]}/#{@player1.score[1]} vs Player 2: #{@player2.score[0]}/#{@player2.score[1]}"
      @game_manager.next_turn

      if @current_player == @player1
        @current_player = @player2
      else
        @current_player = @player1
      end
    end
    puts
    puts "--------- WINNER ---------"
    puts
    puts "Congrats #{winner.name} with a score of #{winner.score[0]}/#{winner.score[1]}!!!"

  end

end





