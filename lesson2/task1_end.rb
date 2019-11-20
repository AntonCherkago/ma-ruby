module Description

  module ChangeParameters
    def change_health
      @health -= 5
    end

    def change_enemies
      @enemies += 5
    end

    def change_points
      @points += 10
    end

    def change_bonuses
      @bonuses += 10
    end

    def change_power
      @power += 10
    end

    def change_level
      @level += 1
    end
  end

  module ShowParameters

    def show_health
      puts @health
    end

    def show_health
      puts @health
    end

    def show_count_of_enemies
      puts @enemies
    end

    def show_points
      puts @points
    end

    def show_bonuses
      puts @bonuses
    end

    def show_power
      puts @power
    end

    def show_level
      puts @level
    end
  end
end
