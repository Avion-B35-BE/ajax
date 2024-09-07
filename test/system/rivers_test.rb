require "application_system_test_case"

class RiversTest < ApplicationSystemTestCase
  setup do
    @river = rivers(:one)
  end

  test "visiting the index" do
    visit rivers_url
    assert_selector "h1", text: "Rivers"
  end

  test "should create river" do
    visit rivers_url
    click_on "New river"

    fill_in "Location", with: @river.location
    fill_in "Name", with: @river.name
    click_on "Create River"

    assert_text "River was successfully created"
    click_on "Back"
  end

  test "should update River" do
    visit river_url(@river)
    click_on "Edit this river", match: :first

    fill_in "Location", with: @river.location
    fill_in "Name", with: @river.name
    click_on "Update River"

    assert_text "River was successfully updated"
    click_on "Back"
  end

  test "should destroy River" do
    visit river_url(@river)
    click_on "Destroy this river", match: :first

    assert_text "River was successfully destroyed"
  end
end
