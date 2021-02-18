require_relative 'player'

class Game
  def initialize(player1 = Player.new('Pug'), player2 = Player.new('Bulldog'))
    @player1 = player1
    @player2 = player2
  end


  def attack(player)
    player.receive_damage
  end

end
