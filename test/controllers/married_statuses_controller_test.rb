require 'test_helper'

class MarriedStatusesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @married_status = married_statuses(:one)
  end

  test "should get index" do
    get married_statuses_url
    assert_response :success
  end

  test "should get new" do
    get new_married_status_url
    assert_response :success
  end

  test "should create married_status" do
    assert_difference('MarriedStatus.count') do
      post married_statuses_url, params: { married_status: { name: @married_status.name } }
    end

    assert_redirected_to married_status_url(MarriedStatus.last)
  end

  test "should show married_status" do
    get married_status_url(@married_status)
    assert_response :success
  end

  test "should get edit" do
    get edit_married_status_url(@married_status)
    assert_response :success
  end

  test "should update married_status" do
    patch married_status_url(@married_status), params: { married_status: { name: @married_status.name } }
    assert_redirected_to married_status_url(@married_status)
  end

  test "should destroy married_status" do
    assert_difference('MarriedStatus.count', -1) do
      delete married_status_url(@married_status)
    end

    assert_redirected_to married_statuses_url
  end
end
