require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
       "#{params[:name].reverse}"
  end

  get "/square/:number" do
      @user = params[:number].to_i**2
      @user.to_s
  end

get "/say/:number/:phrase" do
  str=""
  @user = params[:number].to_i
  @phrase = params[:phrase]
  @user.times{
    str += "#{@phrase}/n"
  }
  str
end
get "/say/:word1/:word2/:word3/:word4/:word5" do

 str = ""
 @user = str +params[:word1]+" "+params[:word2]+" "+params[:word3]+" "+params[:word4]+" "+params[:word5]+"."
 @user

end
end
