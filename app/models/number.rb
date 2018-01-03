class Number
  include ActiveModel::Model

  attr_accessor :name, :year, :month, :day,
                :life_path, :challenge, :birthday, :old_type,
                :life_path_mn, :challenge_mn, :birthday_mn

  MASTER_NUMBERS = %w(11 22 33)

  def set_list(master_number)
    list = %w(1 2 3 4 5 6 7 8 9)
    if master_number.blank?
      list
    else
      list << Number::MASTER_NUMBERS[0] unless master_number.include?(Number::MASTER_NUMBERS[0])
      list << Number::MASTER_NUMBERS[1] unless master_number.include?(Number::MASTER_NUMBERS[1])
      list << Number::MASTER_NUMBERS[2] unless master_number.include?(Number::MASTER_NUMBERS[2])
    end
    list
  end

  def calculation(list, birthdate)
    until list.include?(birthdate) do #=> or `while !list.include?(birthdate)`
      birthdate = birthdate.split('').map(&:to_i).inject(:+).to_s
    end
    birthdate
  end
end
