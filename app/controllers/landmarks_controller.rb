class LandmarksController < ApplicationController
  get '/landmarks/new' do

    erb :'landmarks/new'
  end

  get '/landmarks/:id' do

  end

  post '/landmarks' do
    @landmark = Landmark.new(params[:landmark])
    binding.pry
  end
end
