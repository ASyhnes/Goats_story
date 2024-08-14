class LocationsController < ApplicationController
  # def show
  #   @location = Location.find(params[:id])
  # end

  def new
    @goat = Goat.find(params[:goat_id])
    @location = Location.new
  end

  def create
    @location = Location.new(location_params)
    @location.user = current_user
    @goat = Goat.find(params[:goat_id])
    @location.goat = @goat
    if @location.save
      redirect_to locations_path, notice: 'Votre demande de location a bien été prise en compte'
    else
      render :new, status: :unprocessable_entity
    end
    # render "lists/show"
  end

  def show
  end

  def destroy
    @location = Location.find(params[:id])
    @location.destroy
    redirect_to location_path(@location.user), status: :see_other
  end

private

def location_params
  params.require(:location).permit(:details, :start_date, :end_date)

end
end
