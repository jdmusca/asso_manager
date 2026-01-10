module NavigationHelper
  # Returns an <a> tag wrapped with an li that has 'active' class when on current page
  def nav_link_to(name, path, **opts)
    active = current_page?(path) ? "active" : ""
    content_tag :li, class: "nav-item" do
      link_to name, path, class: "nav-link #{active}", **opts
    end
  end

  def authorized?(required_role = nil)
    return false unless utilisateur_signed_in?
    return true if required_role.nil?
    current_utilisateur.role == required_role.to_s
  end
end
