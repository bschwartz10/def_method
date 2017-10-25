class PlayersReader
  def self.read_players(players_txt)
    IncomingPlayers.new(IO.readlines(players_txt) { |raw_player| raw_player })
  end
end
