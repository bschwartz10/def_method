class Player
  attr_reader :player, :attributes, :gender, :date_of_birth

  def initialize(player)
    @player = player
    @attributes = set_attributes
  end

  def standardize!
    formatted_date_of_birth
    formatted_gender
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
    attributes[:date_of_birth].tr!('-', '/')
  end

  def formatted_gender
    attributes[:gender] = attributes[:gender].start_with?('M') ? 'Male' : 'Female'
  end

end
