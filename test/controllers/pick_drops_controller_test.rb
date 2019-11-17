require 'test_helper'

class PickDropsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pick_drop = pick_drops(:one)
  end

  test "should get index" do
    get pick_drops_url
    assert_response :success
  end

  test "should get new" do
    get new_pick_drop_url
    assert_response :success
  end

  test "should create pick_drop" do
    assert_difference('PickDrop.count') do
      post pick_drops_url, params: { pick_drop: { address: @pick_drop.address, drop_off: @pick_drop.drop_off, order: @pick_drop.order, pick_up: @pick_drop.pick_up, trip_id: @pick_drop.trip_id } }
    end

    assert_redirected_to pick_drop_url(PickDrop.last)
  end

  test "should show pick_drop" do
    get pick_drop_url(@pick_drop)
    assert_response :success
  end

  test "should get edit" do
    get edit_pick_drop_url(@pick_drop)
    assert_response :success
  end

  test "should update pick_drop" do
    patch pick_drop_url(@pick_drop), params: { pick_drop: { address: @pick_drop.address, drop_off: @pick_drop.drop_off, order: @pick_drop.order, pick_up: @pick_drop.pick_up, trip_id: @pick_drop.trip_id } }
    assert_redirected_to pick_drop_url(@pick_drop)
  end

  test "should destroy pick_drop" do
    assert_difference('PickDrop.count', -1) do
      delete pick_drop_url(@pick_drop)
    end

    assert_redirected_to pick_drops_url
  end
end
