require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    @num = params[:number].to_i
    "#{@num**2}"
  end
  
  get '/say/:number/:phrase' do
    num = params[:number].to_i
    phrase = params[:phrase]
    "#{phrase}" * num
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1] +" "+ params[:word2]+" "+params[:word3]+" "+params[:word4]+" "+params[:word5]+"."}"
  end
  
  get '/:operation/:number1/:number2' do
    @num = params[:number].to_i
    @num2 = params[:number2].to_i
    "#{@num+@num2}"
    "#{@num2 - @num}"
    "#{@num*@num2}"
    "#{@num / @num2}"
  en
  
end