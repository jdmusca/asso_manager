class SessionsController < ApplicationController
  def new
  end

  def create
    utilisateur = Utilisateur.find_by(email: params[:email])
    if utilisateur&.authenticate(params[:password])
      session[:utilisateur_id] = utilisateur.id
      redirect_to root_path, notice: "Connecté"
    else
      flash.now[:alert] = "Email ou mot de passe invalide"
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    session.delete(:utilisateur_id)
    redirect_to root_path, notice: "Déconnecté"
  end
end
