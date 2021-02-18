
require 'player'
require 'game'

describe Game do


  describe '#attack' do
    it 'damages the player' do
      player_1 = double()
      player_2 = double()
      game = Game.new(player_1,player_2)
      expect(player_2).to receive(:receive_damage)
      game.attack(player_2)
    end

    it'switches turns after attack' do
      player_1 = double()
      player_2 = double()
      game = Game.new(player_1,player_2)
      expect(player_2).to receive(:receive_damage)
      game.attack(player_2)
      expect(game.turn).to eq player_1
    end
  end

end
