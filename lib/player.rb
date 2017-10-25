class Player
  attr_reader :player, :last_name, :first_name, :gender, :favorite_color, :date_of_birth

  def initialize(player)
    @player = player
    @last_name = player[0]
    @first_name = player[1]
    @gender = formatted_gender
    @favorite_color = player[3]
    @date_of_birth = formatted_date_of_birth
  end

  def formatted_date_of_birth
    player[4].tr('-', '/')
  end

  def formatted_gender
    player[2].start_with?('M') ? 'Male' : 'Female'
  end

end
