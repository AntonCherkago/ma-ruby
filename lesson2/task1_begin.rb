class MarioGame
  def initialize
    @health = 100
    @enemies = 0
    @points = 0
    @bonuses = 10
    @power = 0
    @level = 0
  end

  include Description::ChangeParameters
  include Description::ShowParameters
end


class Crash
  def initialize
    @health = 100
    @power = 0
    @level = 0
  end

  include Description::CrashMethods
end


