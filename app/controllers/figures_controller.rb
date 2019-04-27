class FiguresController < ApplicationController
  # add controller methods
  get 'figure/new' do
    erb :'figure/new'
  end
end
