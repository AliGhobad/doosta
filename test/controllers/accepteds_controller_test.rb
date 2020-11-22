require 'test_helper'

class AcceptedsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @accepted = accepteds(:one)
  end

  test "should get index" do
    get accepteds_url
    assert_response :success
  end

  test "should get new" do
    get new_accepted_url
    assert_response :success
  end

  test "should create accepted" do
    assert_difference('Accepted.count') do
      post accepteds_url, params: { accepted: { event_id: @accepted.event_id, user_id: @accepted.user_id, user_type: @accepted.user_type } }
    end

    assert_redirected_to accepted_url(Accepted.last)
  end

  test "should show accepted" do
    get accepted_url(@accepted)
    assert_response :success
  end

  test "should get edit" do
    get edit_accepted_url(@accepted)
    assert_response :success
  end

  test "should update accepted" do
    patch accepted_url(@accepted), params: { accepted: { event_id: @accepted.event_id, user_id: @accepted.user_id, user_type: @accepted.user_type } }
    assert_redirected_to accepted_url(@accepted)
  end

  test "should destroy accepted" do
    assert_difference('Accepted.count', -1) do
      delete accepted_url(@accepted)
    end

    assert_redirected_to accepteds_url
  end
end
