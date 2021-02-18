
require_relative "game"
class Player
  DEFAULT_HIT_POINTS = 60
  DEFAULT_ATTACK = 10
  attr_reader :name, :hit_points

  def initialize(name, hit_points = DEFAULT_HIT_POINTS, attack = DEFAULT_ATTACK)
    @name = name
    @hit_points = hit_points
    @attack = attack
  end

  def receive_damage
    @hit_points -= @attack
  end

end
