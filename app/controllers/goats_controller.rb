class GoatsController < ApplicationController
  def index
    @goats = Goat.all
     # The `geocoded` scope filters only flats with coordinates
    @markers = @goats.geocoded.map do |goat|
      {
        lat: goat.latitude,
        lng: goat.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {goat: goat}),
        marker_html: render_to_string(partial: "marker")
      }
    end
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

  def update
    @goat = Goat.find(params[:id])
    if @goat.update(goat_params)
      redirect_to goat_path(@goat)
    else
      render :edit
    end
  end

  def destroy
    @goat = Goat.find(params[:id])
    @goat.destroy
    redirect_to profil_path, status: :see_other
  end

  private

  def goat_params
    params.require(:goat).permit(:name, :race, :description, :address, photos: [])
  end
end
