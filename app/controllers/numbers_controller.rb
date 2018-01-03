class NumbersController < ApplicationController

  def new
    @numbers = Number.new
  end

  def your_number
    @numbers = [Number.new(number_params)]
    p @numbers
    @numbers.each do |number|
      list = number.set_list(number.life_path_mn)
      birthdate = number.year + number.month + number.day
      number.life_path = number.calculation(list, birthdate)

      list = number.set_list(number.challenge_mn)
      birthdate = number.month + number.day
      number.challenge = number.calculation(list, birthdate)

      list = number.set_list(number.birthday_mn)
      number.birthday = number.calculation(list, number.day)
    end
  end

    private

  def number_params
    params.require(:number).permit(:name, :year, :month, :day,
                                   :life_path, :challenge, :birthday,
                                   life_path_mn: [], challenge_mn: [], birthday_mn: [])
  end
end