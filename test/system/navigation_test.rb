require "application_system_test_case"

class NavigationTest < ApplicationSystemTestCase
  test "sidebar shows login when not signed in" do
    visit root_path
    assert_selector "aside.app-sidebar"
    assert_text "Se connecter"
  end

  test "sidebar shows logout and admin when signed in as admin" do
    utilisateur = Utilisateur.create!(email: "admin@example.com", password: "password", nom: "Admin", prenom: "Istrator", role: "admin")
    visit login_path
    fill_in "Email", with: utilisateur.email
    fill_in "Mot de passe", with: "password"
    click_button "Se connecter"

    visit root_path

    assert_text "Se déconnecter"
    assert_text "Administration"
  end
end
