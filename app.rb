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

  # get '/say/:number/:phrase' do
  #   @number = params[:number]
  #   @phrase = params[:phrase]
  #   "#{@number.to_i.times{|@phrase| '' += @phrase}}"
  # end

  get '/say/:number/:phrase' do
    answer = ''

    params[:number].to_i.times do
      answer += params[:phrase]
    end
    answer
  end

end
