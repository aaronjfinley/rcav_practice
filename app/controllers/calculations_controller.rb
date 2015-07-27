class CalculationsController < ApplicationController
  def instructions
    render("instructions.html.erb")
  end

  def square_root

    @page_title = "Square Root"

    @num_input = params['num_input'].to_f

    @output = Math.sqrt(@num_input).round(2)

    @output_string = "The square root of #{@num_input} is #{@output}"

    render("calculation_output.html.erb")
  end

  def square

    @page_title = "Square"

    @num_input = params['num_input'].to_f

    @output = (@num_input**2).round(2)

    @output_string = "The square of #{@num_input} is #{@output}"

    render("calculation_output.html.erb")
  end

  def random

    @page_title = "Random Number"

    @min = params['min'].to_i
    @max = params['max'].to_i

    @output = rand(@max - @min + 1) + @min

    @output_string = "A random number between #{@min} and #{@max} is #{@output}"

    render("calculation_output.html.erb")
  end

  def payment

    @page_title = "Payment"

    @monthly_rate = params['rate'].to_f/10000/12
    @years = params['years'].to_i
    @principal = params['principal'].to_f

    @output = @monthly_rate*@principal / (1-(1+@monthly_rate)**-(@years*12))

    @rounded_rate = (params['rate'].to_f/100).round(2)


    render("payment_output.html.erb")
  end

end
