require_relative 'player'

class Game
  attr_reader :player1, :player2, :turn
  def initialize(player1 = Player.new('Pug'), player2 = Player.new('Bulldog'))
    @player1 = player1
    @player2 = player2
    @turn = []
  end


  def attack(player)
    player.receive_damage
    switch_turn(player)
  end

  def switch_turn(player)
     if player == @player1
       @turn = @player2
       return
     end

    if player == @player2
      @turn = @player1
    end

  end


end
