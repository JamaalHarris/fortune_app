class MyExamplesController < ApplicationController
  def fortune_method
    fortunes = ["You will win the lottery", "This is the first day of the rest of your life", "you will get a promotion"]
    render json: { fortune: fortunes.sample }
  end

  def random_number_method
    numbers = []
    6.times do
      numbers << rand(1..60)
    end
    render json: { numbers: numbers }
  end
end
