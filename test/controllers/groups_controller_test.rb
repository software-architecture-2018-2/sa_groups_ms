require 'test_helper'

class GroupsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @group = groups(:one)
  end

  test "should get index" do
    get groups_url, as: :json
    assert_response :success
  end

  test "should create group" do
    assert_difference('Group.count') do
      post groups_url, params: { group: { description: @group.description, director: @group.director, field: @group.field, leader: @group.leader, logo: @group.logo, members: @group.members, skill: @group.skill, status: @group.status, topic: @group.topic, university: @group.university, website: @group.website } }, as: :json
    end

    assert_response 201
  end

  test "should show group" do
    get group_url(@group), as: :json
    assert_response :success
  end

  test "should update group" do
    patch group_url(@group), params: { group: { description: @group.description, director: @group.director, field: @group.field, leader: @group.leader, logo: @group.logo, members: @group.members, skill: @group.skill, status: @group.status, topic: @group.topic, university: @group.university, website: @group.website } }, as: :json
    assert_response 200
  end

  test "should destroy group" do
    assert_difference('Group.count', -1) do
      delete group_url(@group), as: :json
    end

    assert_response 204
  end
end
