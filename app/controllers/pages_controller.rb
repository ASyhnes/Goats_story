class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def profil
    @user = profil_path(current_user)
  end

  def edit_profil
    @user = profil_path_edit(current_user)
  end

  def show_all
    # methode a definir (thais)
  end

end
