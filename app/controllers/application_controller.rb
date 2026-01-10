class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  # Changes to the importmap will invalidate the etag for HTML responses
  stale_when_importmap_changes

  helper_method :current_utilisateur, :utilisateur_signed_in?

  private

  def current_utilisateur
    return @current_utilisateur if defined?(@current_utilisateur)
    @current_utilisateur = if session[:utilisateur_id]
      Utilisateur.find_by(id: session[:utilisateur_id])
    else
      nil
    end
  end

  def utilisateur_signed_in?
    current_utilisateur.present?
  end
end
