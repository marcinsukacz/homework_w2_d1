require("minitest/autorun")
require("minitest/rg")
require_relative("../team")

class TestTeam < MiniTest::Test

  def test_team_name
    team = Team.new("Chicago Bulls", ["Jordan", "Pippen", "Rodman", "Kukoc"], "Phil Jackson")
    assert_equal("Chicago Bulls", team.name())
  end

  def test_team_players
    team = Team.new("Chicago Bulls", ["Jordan", "Pippen", "Rodman", "Kukoc"], "Phil Jackson")
    assert_equal(["Jordan", "Pippen", "Rodman", "Kukoc"], team.players())
  end

  def test_get_team_coach
    team = Team.new("Chicago Bulls", ["Jordan", "Pippen", "Rodman", "Kukoc"], "Phil Jackson")
    assert_equal("Phil Jackson", team.coach())
  end

  def test_update_coach
    team = Team.new("Chicago Bulls", ["Jordan", "Pippen", "Rodman", "Kukoc"], "Phil Jackson")
    team.coach = "Steve Kerr" # attr_accessor can manipulate the variable only by assigning, and not by passing parameters
    assert_equal("Steve Kerr", team.coach())
  end

  def test_add_player
    team = Team.new("Chicago Bulls", ["Jordan", "Pippen", "Rodman", "Kukoc"], "Phil Jackson")
    team.add_player("Harper")
    assert_equal(["Jordan", "Pippen", "Rodman", "Kukoc", "Harper"], team.players())
  end

  def test_look_for_player_found
    team = Team.new("Chicago Bulls", ["Jordan", "Pippen", "Rodman", "Kukoc"], "Phil Jackson")
    assert_equal(true, team.look_for_player("Rodman"))
  end

  def test_look_for_player_not_found
    team = Team.new("Chicago Bulls", ["Jordan", "Pippen", "Rodman", "Kukoc"], "Phil Jackson")
    assert_equal(false, team.look_for_player("James"))
  end

  def test_update_points_win
    team = Team.new("Chicago Bulls", ["Jordan", "Pippen", "Rodman", "Kukoc"], "Phil Jackson")
    team.update_points("Win")
    assert_equal(2, team.points())
  end

  def test_update_points_lose
    team = Team.new("Chicago Bulls", ["Jordan", "Pippen", "Rodman", "Kukoc"], "Phil Jackson")
    team.update_points("Lose")
    assert_equal(0, team.points())
  end
end

# Make a class to represent a Team that has the properties Team name (String), Players (array of strings) and a Coach (String).
# For each property in the class make a getter method than can return them.
# Create a setter method to allow the coach's name to be updated.
# Refactor the class to use attr_reader or attr_accessor instead of your own getter and setter methods.
# Create a method that adds a new player to the players array.
# Add a method that takes in a string of a player's name and checks to see if they are in the players array.
# Add a points property into your class that starts at 0.
# Create a method that takes in whether the team has won or lost and updates the points property for a win.
