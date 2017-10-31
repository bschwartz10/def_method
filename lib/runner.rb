require './lib/incoming_players'
require './lib/player'
require './lib/players_writer'
require './lib/outgoing_players'
require './lib/players_reader'

files = ['./input/comma.txt', './input/pipe.txt', './input/space.txt']

raw_players = files.map do |file|
  PlayersReader.read_players(file)
end

players = raw_players.map do |incoming_players|
  if incoming_players.players.first.include?(',')
    incoming_players.comma_players
  elsif incoming_players.players.first.include?('|')
    incoming_players.pipe_players
  else
    incoming_players.space_players
  end
end
outgoing_players = OutgoingPlayers.new(players).output_3
PlayersWriter.write_players(outgoing_players)
