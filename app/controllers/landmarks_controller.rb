class LandmarksController < ApplicationController
  get '/landmarks/new' do

    erb :'landmarks/new'
  end

  get '/landmarks/:id' do

  end

  post '/landmarks' do
    binding.pry
  end
end
