class GoatsController < ApplicationController

  def show
    @goat = Goat.find(params[:id])
  end
end
