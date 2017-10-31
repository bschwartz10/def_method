require 'date'

class OutgoingPlayers
  attr_reader :all

  def initialize(players)
    @all = players.flatten
  end

  def output_1
    all.sort_by {|player| [player.gender, player.last_name]}
  end

  def output_2
    all.sort_by {|player| [Date.strptime(player.date_of_birth, '%m/%d/%Y'), player.last_name]}
  end

  def output_3
    all.sort_by {|player| player.last_name }.reverse!
  end

end
