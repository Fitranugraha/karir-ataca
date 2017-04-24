require 'test_helper'

class FormalEducationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @formal_education = formal_educations(:one)
  end

  test "should get index" do
    get formal_educations_url
    assert_response :success
  end

  test "should get new" do
    get new_formal_education_url
    assert_response :success
  end

  test "should create formal_education" do
    assert_difference('FormalEducation.count') do
      post formal_educations_url, params: { formal_education: { certificate: @formal_education.certificate, department: @formal_education.department, end_date: @formal_education.end_date, faculty: @formal_education.faculty, level: @formal_education.level, name: @formal_education.name, notes: @formal_education.notes, profile_id: @formal_education.profile_id, start_date: @formal_education.start_date } }
    end

    assert_redirected_to formal_education_url(FormalEducation.last)
  end

  test "should show formal_education" do
    get formal_education_url(@formal_education)
    assert_response :success
  end

  test "should get edit" do
    get edit_formal_education_url(@formal_education)
    assert_response :success
  end

  test "should update formal_education" do
    patch formal_education_url(@formal_education), params: { formal_education: { certificate: @formal_education.certificate, department: @formal_education.department, end_date: @formal_education.end_date, faculty: @formal_education.faculty, level: @formal_education.level, name: @formal_education.name, notes: @formal_education.notes, profile_id: @formal_education.profile_id, start_date: @formal_education.start_date } }
    assert_redirected_to formal_education_url(@formal_education)
  end

  test "should destroy formal_education" do
    assert_difference('FormalEducation.count', -1) do
      delete formal_education_url(@formal_education)
    end

    assert_redirected_to formal_educations_url
  end
end
