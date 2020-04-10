class SweetsController < ApplicationController
  before_action :find_sweet, only: [:show, :edit]

  def index
    @sweets = Sweet.all
  end

  def show

  end

  private
  def find_sweet
    @sweet = Sweet.find(params[:id])
  end

end
