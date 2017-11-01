class IncomingPlayers
  attr_reader :raw_players

  def initialize(raw_players)
    @raw_players = raw_players.map {|raw_player| raw_player.gsub(/[,|]/, "").split(' ')}
  end

  def normalize
    new_players = raw_players.map do |raw_player|
      raw_player.delete_at(2) if raw_player.count == 6
      raw_player
    end
    new_players.map do |np|
      if np[4].include?('-') || np[4].include?('/')
        np[3], np[4] = np[4], np[3]
      end
      Player.new(np)
    end
  end

  def pipe_players #6
    raw_players.map do |player|
      require "pry"; binding.pry
      np = player.gsub(/\s+/, "").tr('|',',').split(',')
      np.delete_at(2)
      np[3], np[4] = np[4], np[3]
      Player.new(np)
    end
  end

  def comma_players #5
    raw_players.map do |player|
      np = player.gsub(/\s+/, "").split(',')
      np[3], np[4] = np[4], np[3]
      Player.new(np)
    end
  end

  def space_players #6
    raw_players.map do |player|
      np = player.split(' ')
      np.delete_at(2)
      Player.new(np)
    end
  end

end
