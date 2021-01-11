class Player
  DEFAULT_HP = 60

  def initialize(name)
    @name = name
    @hit_points = DEFAULT_HP
  end

  attr_accessor :name, :hit_points

  def receive_damage
    @hit_points -= 10
  end
end