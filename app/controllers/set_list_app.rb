class SetList < Sinatra::Base

  get '/songs' do
    @songs = Song.all.includes(:playlist)
    erb :"songs/index"
  end

  get '/songs/:id' do
    require 'pry'; binding.pry
    @song = Song.find(params[:id])
    erb :'songs/show'
  end
end
