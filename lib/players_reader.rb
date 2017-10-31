class PlayersReader
  def self.read_players(file)
    incoming_players = []
    IO.foreach(file) { |raw_player| incoming_players << raw_player.strip }
    IncomingPlayers.new(incoming_players)
  end
end
