require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :new
  end

  post '/student' do
    @student = Student.new(params)

    params[:student][:courses].each do |details|
      Course.new(details)
    end
  end

end
