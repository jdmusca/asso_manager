class UtilisateursController < ApplicationController
  def new
    @utilisateur = Utilisateur.new
  end

  def create
    @utilisateur = Utilisateur.new(utilisateur_params)
    if @utilisateur.save
      session[:utilisateur_id] = @utilisateur.id
      redirect_to member_path, notice: "Inscription réussie. Bienvenue !"
    else
      flash.now[:alert] = @utilisateur.errors.full_messages.to_sentence
      render :new, status: :unprocessable_entity
    end
  end

  private

  def utilisateur_params
    params.require(:utilisateur).permit(:email, :nom, :prenom, :password, :password_confirmation)
  end
end
