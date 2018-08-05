require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @user_name = params[:name]
    "#{@user_name.reverse}"
  end

  get '/square/:number' do
    @number = params[:number]
    "#{@number.to_i ** 2}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number]
    @phrase = params[:phrase]
    "#{@phrase * @number.to_i}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @w1 = params[:word1]
    @w2 = params[:word2]
    @w3 = params[:word3]
    @w4 = params[:word4]
    @w5 = params[:word5]
    "#{@w1 }" + "#{@w2 }" + "#{@w3 }" + "#{@w4 }" + "#{@w5}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @num1 = params[:number1]
    @num2 = params[:number2]

    if @operation == 'add'
      "#{@num1.to_i + @num2.to_i}"
    elsif @operation == 'subtract'
      "#{@num2.to_i - @num1.to_i}"
    elsif @operation == 'divide'
      "#{@num1.to_i / @num2.to_i}"
    elsif @operation == 'multiply'
      "#{@num1.to_i * @num2.to_i}"
    end
  end

end
