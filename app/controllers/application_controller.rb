class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  get '/games' do
    games = Game.all.order(:title).limit(10)
    games.to_json
  end
  get '/games/:id' do
  end
end
