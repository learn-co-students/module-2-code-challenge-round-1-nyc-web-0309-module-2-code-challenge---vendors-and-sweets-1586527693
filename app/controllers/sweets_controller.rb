class SweetsController < ApplicationController
  def index
    @sweets = Sweet.all
  end
  def show
    @sweet = Sweet.find(params[:id])
  end
  private
    def sweetparams
        params.require(:sweet).permit(:name)
    end
end
