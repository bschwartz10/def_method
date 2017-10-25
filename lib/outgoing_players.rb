class OutgoingPlayers
  attr_reader :all

  def initialize(players)
    @all = players.flatten
  end

  def output_3
    players = all.sort_by do |player|
      player.last_name
    end
    players.reverse
  end

end
