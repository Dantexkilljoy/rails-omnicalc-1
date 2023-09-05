class CalculatorController < ApplicationController
  def index
  end

  def square_results
    @number = params.fetch("number").to_i

    @result = @number * @number
  end

  def square_root
  end

  def payment
  end

  def random
  end

end
