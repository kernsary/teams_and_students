class Team

  attr_accessor(:team_name, :players, :coach, :points)

  def initialize(input_team_name, input_players, input_coach)
    @team_name = input_team_name
    @players = input_players
    @coach = input_coach
    @points = 0
  end

  # def get_team_name()
  #   return @team_name
  # end
  #
  # def get_players()
  #   return @players
  # end
  #
  # def get_coach()
  #   return @coach
  # end
  #
  # def set_coach(new_coach)
  #   @coach = new_coach
  # end

  def add_player(new_player)
    @players << new_player
  end

  def find_player(name)
    for player in @players
      return true if player == name
    end
    return false
  end

  def update_points(result)
    @points += 3 if result == "win"
  end

end
