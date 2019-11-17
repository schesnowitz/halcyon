require "application_system_test_case"

class DriversTest < ApplicationSystemTestCase
  setup do
    @driver = drivers(:one)
  end

  test "visiting the index" do
    visit drivers_url
    assert_selector "h1", text: "Drivers"
  end

  test "creating a Driver" do
    visit drivers_url
    click_on "New Driver"

    fill_in "Dob", with: @driver.dob
    fill_in "First name", with: @driver.first_name
    fill_in "Hire date", with: @driver.hire_date
    fill_in "Last name", with: @driver.last_name
    click_on "Create Driver"

    assert_text "Driver was successfully created"
    click_on "Back"
  end

  test "updating a Driver" do
    visit drivers_url
    click_on "Edit", match: :first

    fill_in "Dob", with: @driver.dob
    fill_in "First name", with: @driver.first_name
    fill_in "Hire date", with: @driver.hire_date
    fill_in "Last name", with: @driver.last_name
    click_on "Update Driver"

    assert_text "Driver was successfully updated"
    click_on "Back"
  end

  test "destroying a Driver" do
    visit drivers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Driver was successfully destroyed"
  end
end
