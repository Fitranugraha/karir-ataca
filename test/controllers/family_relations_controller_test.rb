require 'test_helper'

class FamilyRelationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @family_relation = family_relations(:one)
  end

  test "should get index" do
    get family_relations_url
    assert_response :success
  end

  test "should get new" do
    get new_family_relation_url
    assert_response :success
  end

  test "should create family_relation" do
    assert_difference('FamilyRelation.count') do
      post family_relations_url, params: { family_relation: { name: @family_relation.name } }
    end

    assert_redirected_to family_relation_url(FamilyRelation.last)
  end

  test "should show family_relation" do
    get family_relation_url(@family_relation)
    assert_response :success
  end

  test "should get edit" do
    get edit_family_relation_url(@family_relation)
    assert_response :success
  end

  test "should update family_relation" do
    patch family_relation_url(@family_relation), params: { family_relation: { name: @family_relation.name } }
    assert_redirected_to family_relation_url(@family_relation)
  end

  test "should destroy family_relation" do
    assert_difference('FamilyRelation.count', -1) do
      delete family_relation_url(@family_relation)
    end

    assert_redirected_to family_relations_url
  end
end
