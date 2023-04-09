require "test_helper"

class ChopsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @chop = chops(:one)
  end

  test "should get index" do
    get chops_url
    assert_response :success
  end

  test "should get new" do
    get new_chop_url
    assert_response :success
  end

  test "should create chop" do
    assert_difference("Chop.count") do
      post chops_url, params: { chop: { solution: @chop.solution, solve: @chop.solve } }
    end

    assert_redirected_to chop_url(Chop.last)
  end

  test "should show chop" do
    get chop_url(@chop)
    assert_response :success
  end

  test "should get edit" do
    get edit_chop_url(@chop)
    assert_response :success
  end

  test "should update chop" do
    patch chop_url(@chop), params: { chop: { solution: @chop.solution, solve: @chop.solve } }
    assert_redirected_to chop_url(@chop)
  end

  test "should destroy chop" do
    assert_difference("Chop.count", -1) do
      delete chop_url(@chop)
    end

    assert_redirected_to chops_url
  end
end
