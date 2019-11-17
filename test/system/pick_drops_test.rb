require "application_system_test_case"

class PickDropsTest < ApplicationSystemTestCase
  setup do
    @pick_drop = pick_drops(:one)
  end

  test "visiting the index" do
    visit pick_drops_url
    assert_selector "h1", text: "Pick Drops"
  end

  test "creating a Pick drop" do
    visit pick_drops_url
    click_on "New Pick Drop"

    fill_in "Address", with: @pick_drop.address
    check "Drop off" if @pick_drop.drop_off
    fill_in "Order", with: @pick_drop.order
    check "Pick up" if @pick_drop.pick_up
    fill_in "Trip", with: @pick_drop.trip_id
    click_on "Create Pick drop"

    assert_text "Pick drop was successfully created"
    click_on "Back"
  end

  test "updating a Pick drop" do
    visit pick_drops_url
    click_on "Edit", match: :first

    fill_in "Address", with: @pick_drop.address
    check "Drop off" if @pick_drop.drop_off
    fill_in "Order", with: @pick_drop.order
    check "Pick up" if @pick_drop.pick_up
    fill_in "Trip", with: @pick_drop.trip_id
    click_on "Update Pick drop"

    assert_text "Pick drop was successfully updated"
    click_on "Back"
  end

  test "destroying a Pick drop" do
    visit pick_drops_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pick drop was successfully destroyed"
  end
end
