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

end
