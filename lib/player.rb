class Player
  attr_reader :player, :attributes, :last_name, :first_name, :gender, :favorite_color, :date_of_birth

  def initialize(player)
    @player = player
    @attributes = set_attributes
    # @last_name = player[0]
    # @first_name = player[1]
    # @gender = formatted_gender
    # @favorite_color = player[3]
    # @date_of_birth = formatted_date_of_birth
  end

  def stock_attributes
    [
      :last_name,
      :first_name,
      :gender,
      :favorite_color,
      :date_of_birth,
    ]
  end

  def set_attributes
    Hash[stock_attributes.zip(player)]
  end

  def formatted_date_of_birth
    attributes[:date_of_birth].tr!('-', '/')
  end

  def formatted_gender
    attributes[:gender].start_with?('M') ? 'Male' : 'Female'
  end

end
