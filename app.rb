require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @user_name = params[:name]
    "#{@user_name.reverse}"
  end

  get '/square/:number' do
    @number = params[:number]
    "#{@number.to_i*@number.to_i}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number]
    @phrase = params[:phrase]
    output = ''
    "#{@number.to_i.times{output += @phrase}}"
    output
  end

  get '/say/:word1/:word2/:word3/:word4/:word5'do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    @num1 = params[:number1]
    @num2 = params[:number2]
    if params[:operation] = 'add'
      output = sum(@num1.to_i,@num2.to_i).to_s
    else
    end
  end

end
