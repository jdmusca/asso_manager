require "application_system_test_case"

class SidebarTest < ApplicationSystemTestCase
  test "sidebar toggles on small screens" do
    # try to resize viewport for mobile
    begin
      page.driver.browser.manage.window.resize_to(375, 800)
    rescue StandardError
      skip "Driver does not support window resizing"
    end

    visit root_path
    assert_selector "button.sidebar-toggle"

    toggle = find("button.sidebar-toggle")
    # open
    toggle.click
    assert_selector "aside.app-sidebar.visible"

    # close
    toggle.click
    assert_no_selector "aside.app-sidebar.visible"
  end
end
