require 'test_helper'

class TravellingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @travelling = travellings(:one)
  end

  test "should get index" do
    get travellings_url
    assert_response :success
  end

  test "should get new" do
    get new_travelling_url
    assert_response :success
  end

  test "should create travelling" do
    assert_difference('Travelling.count') do
      post travellings_url, params: { travelling: { country: @travelling.country, end_date: @travelling.end_date, objective: @travelling.objective, profile_id: @travelling.profile_id, start_date: @travelling.start_date } }
    end

    assert_redirected_to travelling_url(Travelling.last)
  end

  test "should show travelling" do
    get travelling_url(@travelling)
    assert_response :success
  end

  test "should get edit" do
    get edit_travelling_url(@travelling)
    assert_response :success
  end

  test "should update travelling" do
    patch travelling_url(@travelling), params: { travelling: { country: @travelling.country, end_date: @travelling.end_date, objective: @travelling.objective, profile_id: @travelling.profile_id, start_date: @travelling.start_date } }
    assert_redirected_to travelling_url(@travelling)
  end

  test "should destroy travelling" do
    assert_difference('Travelling.count', -1) do
      delete travelling_url(@travelling)
    end

    assert_redirected_to travellings_url
  end
end
