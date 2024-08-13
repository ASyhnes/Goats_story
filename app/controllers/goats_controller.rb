class GoatsController < ApplicationController
  def index
    @goats = Goat.all
  end
  def show
    @goat = Goat.find(params[:id])
  end
end
