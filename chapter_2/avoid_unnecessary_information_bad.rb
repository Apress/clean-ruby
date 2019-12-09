class PlayerManager
  def spawn(player_id)
    @players << Player.new(player_id)
  end
end

player_manager = PlayerManager.new
player_manager.spawn(1)
