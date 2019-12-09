class Config
  attr_accessor :num_players, :start_score, :number_of_rounds, :score_to_win, :network_game

  def initialize(num_players, start_score, number_of_rounds, score_to_win, network_game)
    # Confirm the parameters provided are correct

    # Assign instance variables
    @num_players = num_players
    @start_score = start_score
    @number_of_rounds = number_of_rounds

    @score_to_win = score_to_win
    @network_game = network_game
  end
end

class Game
  def initialize(config)
    @config = config
  end

  # Formerly the start_game method
  def start
    # start a new game using @config
  end
end

# config values
player_count = 4
score = 0
rounds = 2
winning_score = 10
is_network_game = false

# create a config
game_config = Config.new(player_count, score, rounds, winning_score, is_network_game)

game = Game.new(game_config)
game.start
