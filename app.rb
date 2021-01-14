require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    @rev = params[:name].reverse
    "#{@rev}"
  end

  get '/square/:number' do
    @sqr = params[:number].to_i ** 2
    "#{@sqr}"
  end

  get '/say/:number/:phrase' do
    @cor = params[:phrase] * params[:number].to_i
    "#{@cor}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    # @str = ""
    # word = params[i].do
    # @str << word
    # @str << "."
    @str = (params[:word1] + " " + params[:word2] + " " + params[:word3] + " " + params[:word4] + " " + params[:word5] + ".").to_s
    "#{@str}"
  end

  get '/:operation/:number1/:number2' do
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i
    if params[:operation] == "add"
      res = (number1 + number2)
    elsif params[:operation] == "subtract"
      res = (number1 - number2)
    elsif params[:operation] == "multiply"
      res = (number1 * number2)
    else params[:operation] == "divide"
      res = (number1 / number2)
    end
      cor_res = res.to_s
      "#{cor_res}"
  end

end