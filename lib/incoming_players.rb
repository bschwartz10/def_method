class IncomingPlayers
  attr_reader :players

  def initialize(players)
    @players = players
  end

  def pipe_players
    players.map do |player|
      np = player.gsub(/\s+/, "").tr('|',',').split(',')
      np.delete_at(2)
      np[3], np[4] = np[4], np[3]
      Player.new(np)
    end
  end

  def comma_players
    players.map do |player|
      np = player.gsub(/\s+/, "").split(',')
      np[3], np[4] = np[4], np[3]
      Player.new(np)
    end
  end

  def space_players
    players.map do |player|
      np = player.split(' ')
      np.delete_at(2)
      Player.new(np)
    end
  end

end
