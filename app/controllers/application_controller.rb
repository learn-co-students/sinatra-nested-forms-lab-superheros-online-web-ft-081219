require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
        erb :super_hero 
    end

    post '/teams' do
        @team = Team.new(name:params[:team][:name], motto:params[:team][:motto])
        
        params[:team][:members].each do |hsh|
            Hero.new(name:hsh[:name], power:hsh[:power], bio:hsh[:bio])
        end
        
        @heroes = Hero.all
        #raise @heroes.inspect

        erb :team
    end

end
