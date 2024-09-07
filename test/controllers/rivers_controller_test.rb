require "test_helper"

class RiversControllerTest < ActionDispatch::IntegrationTest
  setup do
    @river = rivers(:one)
  end

  test "should get index" do
    get rivers_url
    assert_response :success
  end

  test "should get new" do
    get new_river_url
    assert_response :success
  end

  test "should create river" do
    assert_difference("River.count") do
      post rivers_url, params: { river: { location: @river.location, name: @river.name } }
    end

    assert_redirected_to river_url(River.last)
  end

  test "should show river" do
    get river_url(@river)
    assert_response :success
  end

  test "should get edit" do
    get edit_river_url(@river)
    assert_response :success
  end

  test "should update river" do
    patch river_url(@river), params: { river: { location: @river.location, name: @river.name } }
    assert_redirected_to river_url(@river)
  end

  test "should destroy river" do
    assert_difference("River.count", -1) do
      delete river_url(@river)
    end

    assert_redirected_to rivers_url
  end
end
