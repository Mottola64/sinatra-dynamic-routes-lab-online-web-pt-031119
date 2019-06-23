require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
  @user_name = params[:name].reverse
  "#{@user_name}"
  end

  get '/square/:number' do
    @number = params[:number].to_i * params[:number].to_i
    "#{@number}"
  end

  get '/say/:number/:phrase' do
    answer = ""
    params[:number].to_i.times do
      answer += params[:phrase]
    end
    answer
    end

  get '/say/:word1/:word2/:word3/:word4/:word5'
    @wordone = params[:word1].to_s
    @wordtwo = params[:word2].to_s
    @wordthree = params[:word3].to_s
    @wordfour = params[:word4].to_s
    @wordfive = params[:word5].to_s
    "#{@wordone} + #{@wordtwo} + #{@wordthree} + #{@wordfour} + #{@wordfive}"
  end
end
