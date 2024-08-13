class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def profil
    @user = profil_path(current_user)
  end
end
