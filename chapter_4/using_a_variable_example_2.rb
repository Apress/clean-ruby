class Player
  attr_accessor :time_until_spawn, :health
end

# Boolean logic stored in a variable
def respawn(player)
  ready_to_spawn = player.time_until_spawn <= 0 &&
    player.health == 0
  respawn_at_base if ready_to_spawn
end

def respawn_at_base
  puts 'Player respawned at base'
end

player = Player.new
player.time_until_spawn = 0
player.health = 0

respawn(player)
