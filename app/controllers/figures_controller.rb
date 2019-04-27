class FiguresController < ApplicationController
  get '/figures/new' do
    @titles = Title.all
    @landmarks = Landmark.all

    erb :'figures/new'
  end

  post '/figures' do
    @figure = Figure.new(params[:figure])

    erb :"figure/#{@figure.id}"
  end
end

# params
# => {"figure"=>{"name"=>"Doctor Who", "title_ids"=>["48"]},
#  "title"=>{"name"=>""},
#  "landmark"=>{"name"=>"", "year_completed"=>""},
#  "submit"=>"Create New Figure"}
