module ApplicationHelper
  # Helper to show nav links with active state
  def sidebar_link(name, path, role: nil)
    return unless role.nil? || authorized?(role)

    classes = "d-block px-3 py-2 text-decoration-none text-body"
    classes += " active" if current_page?(path)
    link_to name, path, class: classes
  end
end
