class PlayersWriter
  def self.write_players(players)
    File.open('./output/target_output.txt', 'w') do |line|
      players.each do |player|
        player.attributes.map {|attribute, value| line << "#{value} "}
        line << "\n"
      end
    end
  end
end
