class GoatsController < ApplicationController
  def index
    @goats = Goat.all
  end
  # def show
  #   @goat = Goat.find(params[:id])
  # end

  def edit
    @goat = Goat.find(params[:id])
  end

  def goat_params
    params.require(:goat).permit(:name, :race,  :description, photos: [])
  end
end
