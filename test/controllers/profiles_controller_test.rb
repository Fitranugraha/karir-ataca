require 'test_helper'

class ProfilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @profile = profiles(:one)
  end

  test "should get index" do
    get profiles_url
    assert_response :success
  end

  test "should get new" do
    get new_profile_url
    assert_response :success
  end

  test "should create profile" do
    assert_difference('Profile.count') do
      post profiles_url, params: { profile: { age: @profile.age, birth_date: @profile.birth_date, birth_place: @profile.birth_place, blood: @profile.blood, current_address: @profile.current_address, email: @profile.email, height: @profile.height, id_address: @profile.id_address, id_no: @profile.id_no, married: @profile.married, mobile_phone: @profile.mobile_phone, name: @profile.name, nationality: @profile.nationality, phone: @profile.phone, religion: @profile.religion, sex: @profile.sex, tribe: @profile.tribe, user_id: @profile.user_id, weight: @profile.weight } }
    end

    assert_redirected_to profile_url(Profile.last)
  end

  test "should show profile" do
    get profile_url(@profile)
    assert_response :success
  end

  test "should get edit" do
    get edit_profile_url(@profile)
    assert_response :success
  end

  test "should update profile" do
    patch profile_url(@profile), params: { profile: { age: @profile.age, birth_date: @profile.birth_date, birth_place: @profile.birth_place, blood: @profile.blood, current_address: @profile.current_address, email: @profile.email, height: @profile.height, id_address: @profile.id_address, id_no: @profile.id_no, married: @profile.married, mobile_phone: @profile.mobile_phone, name: @profile.name, nationality: @profile.nationality, phone: @profile.phone, religion: @profile.religion, sex: @profile.sex, tribe: @profile.tribe, user_id: @profile.user_id, weight: @profile.weight } }
    assert_redirected_to profile_url(@profile)
  end

  test "should destroy profile" do
    assert_difference('Profile.count', -1) do
      delete profile_url(@profile)
    end

    assert_redirected_to profiles_url
  end
end
