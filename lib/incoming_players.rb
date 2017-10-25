class IncomingPlayers
  attr_reader :all

  def initialize(players)
    @all = players.map {|player| player.strip}
  end

  def pipe_players
    all.map do |player|
      np = player.gsub(/\s+/, "").tr('|',',').split(',')
      np.delete_at(2)
      Player.new(np)
    end
  end

  def comma_players
    all.map {|player| Player.new(player.gsub(/\s+/, "").split(','))}
  end

  def space_players
    all.map do |player|
      np = player.split(' ')
      np.delete_at(2)
      np[3], np[4] = np[4], np[3]
      Player.new(np)
    end
  end

end
