class CalculatorController < ApplicationController
  def index
  end

  def square_results
    @number = params.fetch("number").to_f

    @result = @number.to_f * @number.to_f
  end

  def square_root
  end

  def square_root_results
    @number = params.fetch("user_number").to_f

    @result = Math.sqrt(@number)
  end

  def payment
  end

  def payment_results
    apr = params.fetch("user_apr").to_f.round(4)

    @apr_result = apr.to_s(:percentage, { :precision => 4 })

    @years = params.fetch("user_years").to_i

    principal = params.fetch("user_pv").to_f

    @pv = principal.to_s(:currency)

    rate = (apr / 12.0) / 100
    n = -1 * (@years * 12)
    numerator = rate * principal
    denominator = 1 - (1 + rate) ** n
    @payment = (numerator / denominator).to_s(:currency)
  end

  def random
  end

  def random_results
    @min = params.fetch("user_min").to_f

    @max = params.fetch("user_max").to_f

    @result = rand(@min..@max)
  end


end
