require 'test_helper'

class ScientificWorksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @scientific_work = scientific_works(:one)
  end

  test "should get index" do
    get scientific_works_url
    assert_response :success
  end

  test "should get new" do
    get new_scientific_work_url
    assert_response :success
  end

  test "should create scientific_work" do
    assert_difference('ScientificWork.count') do
      post scientific_works_url, params: { scientific_work: { notes: @scientific_work.notes, profile_id: @scientific_work.profile_id, title: @scientific_work.title } }
    end

    assert_redirected_to scientific_work_url(ScientificWork.last)
  end

  test "should show scientific_work" do
    get scientific_work_url(@scientific_work)
    assert_response :success
  end

  test "should get edit" do
    get edit_scientific_work_url(@scientific_work)
    assert_response :success
  end

  test "should update scientific_work" do
    patch scientific_work_url(@scientific_work), params: { scientific_work: { notes: @scientific_work.notes, profile_id: @scientific_work.profile_id, title: @scientific_work.title } }
    assert_redirected_to scientific_work_url(@scientific_work)
  end

  test "should destroy scientific_work" do
    assert_difference('ScientificWork.count', -1) do
      delete scientific_work_url(@scientific_work)
    end

    assert_redirected_to scientific_works_url
  end
end
