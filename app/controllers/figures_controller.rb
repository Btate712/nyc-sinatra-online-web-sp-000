class FiguresController < ApplicationController
  # add controller methods
  get 'figure/new' do
    erb :'figures/new'
  end
end
