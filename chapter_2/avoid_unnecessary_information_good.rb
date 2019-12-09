class PlayerSpawner
  def spawn(player_id)

    @players << Player.new(player_id)
  end
end

player_spawner = PlayerSpawner.new
player_spawner.spawn(1)
