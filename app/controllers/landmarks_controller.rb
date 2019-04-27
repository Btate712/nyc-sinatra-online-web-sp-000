class LandmarksController < ApplicationController
  get '/landmarks/new' do
    @landmark = Landmark.new
    
    erb :'landmarks/new'
  end
end
