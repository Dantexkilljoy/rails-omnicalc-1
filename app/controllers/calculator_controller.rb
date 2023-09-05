class CalculatorController < ApplicationController
  def index
  end

  def square_results
    @number = params.fetch("number").to_i

    @result = @number * @number
  end

  def square_root
  end

  def square_root_results
    @number = params.fetch("user_number").to_i

    @result = Math.sqrt(@number)
  end

  def payment
  end

  def random
  end

end
