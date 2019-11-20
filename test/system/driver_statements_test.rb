require "application_system_test_case"

class DriverStatementsTest < ApplicationSystemTestCase
  setup do
    @driver_statement = driver_statements(:one)
  end

  test "visiting the index" do
    visit driver_statements_url
    assert_selector "h1", text: "Driver Statements"
  end

  test "creating a Driver statement" do
    visit driver_statements_url
    click_on "New Driver Statement"

    fill_in "Driver", with: @driver_statement.driver_id
    fill_in "Due date", with: @driver_statement.due_date
    check "Paid" if @driver_statement.paid
    click_on "Create Driver statement"

    assert_text "Driver statement was successfully created"
    click_on "Back"
  end

  test "updating a Driver statement" do
    visit driver_statements_url
    click_on "Edit", match: :first

    fill_in "Driver", with: @driver_statement.driver_id
    fill_in "Due date", with: @driver_statement.due_date
    check "Paid" if @driver_statement.paid
    click_on "Update Driver statement"

    assert_text "Driver statement was successfully updated"
    click_on "Back"
  end

  test "destroying a Driver statement" do
    visit driver_statements_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Driver statement was successfully destroyed"
  end
end
