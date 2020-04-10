class SweetsController < ApplicationController
  def index
    @sweets = Sweet.all
  end
  def show
    @show = Show.find(params[:id])
  end

  private

  def show_params
    params.require(:vendor).permit(:name)
  end

end
