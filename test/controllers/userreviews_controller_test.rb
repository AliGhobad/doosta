require 'test_helper'

class UserreviewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @userreview = userreviews(:one)
  end

  test "should get index" do
    get userreviews_url
    assert_response :success
  end

  test "should get new" do
    get new_userreview_url
    assert_response :success
  end

  test "should create userreview" do
    assert_difference('Userreview.count') do
      post userreviews_url, params: { userreview: { comments: @userreview.comments, scores: @userreview.scores, user_id: @userreview.user_id, user_id: @userreview.user_id, user_type: @userreview.user_type } }
    end

    assert_redirected_to userreview_url(Userreview.last)
  end

  test "should show userreview" do
    get userreview_url(@userreview)
    assert_response :success
  end

  test "should get edit" do
    get edit_userreview_url(@userreview)
    assert_response :success
  end

  test "should update userreview" do
    patch userreview_url(@userreview), params: { userreview: { comments: @userreview.comments, scores: @userreview.scores, user_id: @userreview.user_id, user_id: @userreview.user_id, user_type: @userreview.user_type } }
    assert_redirected_to userreview_url(@userreview)
  end

  test "should destroy userreview" do
    assert_difference('Userreview.count', -1) do
      delete userreview_url(@userreview)
    end

    assert_redirected_to userreviews_url
  end
end
