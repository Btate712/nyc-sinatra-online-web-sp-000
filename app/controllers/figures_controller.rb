class FiguresController < ApplicationController
  get '/figures' do
    @figures = Figure.all

    erb :'figures/index'
  end

  get '/figures/new' do
    @titles = Title.all
    @landmarks = Landmark.all

    erb :'figures/new'
  end

  get '/figures/:id' do
    @figure = Figure.find(params[:id])

    erb :'figures/show'
  end

  get '/figures/:id/edit' do
    @figure = Figure.find(params[:id])
    @titles = Title.all
    @landmarks = Landmark.all

    erb :'figures/edit'
  end

  post '/figures' do
    @figure = Figure.new(params[:figure])
    @figure.save

    if params[:title][:name] != ""
      title = Title.new(params[:title])
      @figure.titles << title
    end

    if params[:landmark][:name] != ""
      landmark = Landmark.new(params[:landmark])
      @figure.landmarks << landmark
    end

    redirect :"figure/#{@figure.id}"
  end

  patch '/figures' do
    binding.pry
  end
end

# params
# => {"figure"=>{"name"=>"Doctor Who", "title_ids"=>["48"]},
#  "title"=>{"name"=>""},
#  "landmark"=>{"name"=>"", "year_completed"=>""},
#  "submit"=>"Create New Figure"}
