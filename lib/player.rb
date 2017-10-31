class Player
  attr_reader :player, :attributes, :gender, :date_of_birth

  def initialize(player)
    @player = player
    @date_of_birth = formatted_date_of_birth
    @gender = formatted_gender
    @attributes = set_attributes
  end

  def stock_attributes
    [
      :last_name,
      :first_name,
      :gender,
      :date_of_birth,
      :favorite_color,
    ]
  end

  def set_attributes
    Hash[stock_attributes.zip(player)]
  end

  def formatted_date_of_birth
    player[3].tr!('-', '/')
  end

  def formatted_gender
    player[2] = player[2].start_with?('M') ? 'Male' : 'Female'
  end

end
