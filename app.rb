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
    @num = params[:number].to_i
    10.times { puts "show me the money" }
  end
end