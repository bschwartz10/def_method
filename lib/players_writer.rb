class PlayersWriter
  def self.write_players(players)
    File.open('./output/target_output.txt', 'w') do |line|
      players.each do |player|
        line << "#{player.last_name} #{player.first_name} #{player.gender} #{player.date_of_birth} #{player.favorite_color}\n"
      end
    end
  end
end
