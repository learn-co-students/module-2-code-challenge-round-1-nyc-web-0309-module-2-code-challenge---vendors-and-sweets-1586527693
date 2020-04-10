class SweetsController < ApplicationController
  def show
    @sweet = Sweet.find(params[:id])
  end
  
  def index
    @sweets = Sweet.all
  end
end
