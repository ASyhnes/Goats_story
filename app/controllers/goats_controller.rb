class GoatsController < ApplicationController
  def index
    @goats = Goat.all
  end

  def edit
    @goat = Goat.find(params[:id])
  end

  def show
    @goat = Goat.find(params[:id])
  end

  def new
    @goat = Goat.new
  end

  def create
    @goat = Goat.new(goat_params)
    @goat.user = current_user

    if @goat.save
      # redirect_to profil_path(@current_user)
      redirect_to goats_path, notice: "Votre chêvre a bien été ajoutée"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @goat = Goat.find(params[:id])
    @goat.destroy
    redirect_to profil_path, status: :see_other
  end

  private

  def goat_params
    params.require(:goat).permit(:name, :race, :description, photos: [])
  end
end
