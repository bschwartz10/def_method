require './lib/incoming_players'
require './lib/player'
require './lib/players_writer'
require './lib/outgoing_players'
require './lib/players_reader'

txt_files = ['./input/comma.txt', './input/pipe.txt', './input/space.txt']

raw_players = txt_files.map do |txt_file|
  PlayersReader.read_players(txt_file)
end

players = raw_players.map do |incoming_players|
  if incoming_players.all.first.include?(',')
    incoming_players.comma_players
  elsif incoming_players.all.first.include?('|')
    incoming_players.pipe_players
  else
    incoming_players.space_players
  end
end

outgoing_players = OutgoingPlayers.new(players).output_3
PlayersWriter.write_players(outgoing_players)
