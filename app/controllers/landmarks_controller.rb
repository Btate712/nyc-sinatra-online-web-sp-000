class LandmarksController < ApplicationController
  get '/landmarks/new' do
    @landmark = Landmark.new

    erb :'landmarks/new'
  end

  get '/landmarks/:id' do

  end

  post '/landmarks' do
    binding.pry
  end
end
