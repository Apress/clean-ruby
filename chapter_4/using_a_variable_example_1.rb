class Player
  attr_accessor :time_until_spawn, :health
end

# Boolean logic directly in an IF statement
def respawn(player)
  if player.time_until_spawn <= 0 && player.health == 0
    respawn_at_base
  end
end

def respawn_at_base
  puts 'Player respawned at base'
end

player = Player.new
player.time_until_spawn = 0
player.health = 0

respawn(player)
