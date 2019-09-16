require("minitest/autorun")
require("minitest/rg")
require_relative("../sports.rb")

class TestTeam < MiniTest::Test

  def test_get_team_name
    team = Team.new("Rovers", ["Roy", "Joy", "Troy"], "Gaffer")
    assert_equal("Rovers", team.team_name)
  end

  def test_get_players
    team = Team.new("Rovers", ["Roy", "Joy", "Troy"], "Gaffer")
    assert_equal(["Roy", "Joy", "Troy"], team.players)
  end

  def test_get_coach
    team = Team.new("Rovers", ["Roy", "Joy", "Troy"], "Gaffer")
    assert_equal("Gaffer", team.coach)
  end

  def test_set_coach
    team = Team.new("Rovers", ["Roy", "Joy", "Troy"], "Gaffer")
    team.coach = "Big Joe"
    assert_equal("Big Joe", team.coach)
  end

  def test_add_player
    team = Team.new("Rovers", ["Roy", "Joy", "Troy"], "Gaffer")
    team.add_player("Zoe")
    assert_equal(["Roy", "Joy", "Troy", "Zoe"], team.players)
  end

  def test_find_player__player_found
    team = Team.new("Rovers", ["Roy", "Joy", "Troy"], "Gaffer")
    assert_equal(true, team.find_player("Roy"))
  end

  def test_find_player__player_not_found
    team = Team.new("Rovers", ["Roy", "Joy", "Troy"], "Gaffer")
    assert_equal(false, team.find_player("Bob"))
  end

  def test_update_points__win
    team = Team.new("Rovers", ["Roy", "Joy", "Troy"], "Gaffer")
    team.update_points("win")
    assert_equal(3, team.points)
  end

  def test_update_points__loss
    team = Team.new("Rovers", ["Roy", "Joy", "Troy"], "Gaffer")
    team.update_points("loss")
    assert_equal(0, team.points)
  end

end
