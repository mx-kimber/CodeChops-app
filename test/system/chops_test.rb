require "application_system_test_case"

class ChopsTest < ApplicationSystemTestCase
  setup do
    @chop = chops(:one)
  end

  test "visiting the index" do
    visit chops_url
    assert_selector "h1", text: "Chops"
  end

  test "should create chop" do
    visit chops_url
    click_on "New chop"

    fill_in "Solution", with: @chop.solution
    fill_in "Solve", with: @chop.solve
    click_on "Create Chop"

    assert_text "Chop was successfully created"
    click_on "Back"
  end

  test "should update Chop" do
    visit chop_url(@chop)
    click_on "Edit this chop", match: :first

    fill_in "Solution", with: @chop.solution
    fill_in "Solve", with: @chop.solve
    click_on "Update Chop"

    assert_text "Chop was successfully updated"
    click_on "Back"
  end

  test "should destroy Chop" do
    visit chop_url(@chop)
    click_on "Destroy this chop", match: :first

    assert_text "Chop was successfully destroyed"
  end
end
