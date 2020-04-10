class SweetsController < ApplicationController
  def index
    @sweets = Sweet.all
  end

  def show 
    @sweet = Sweet.find(params[:id])
  end

  def new
    @sweet = Sweet.new
  end

  def create
    @sweet = Sweet.create(sweet_params)
    redirect_to @sweet
  end

  private

  def sweet_params
    params.require(:sweet).permit(:name)
  end

end
