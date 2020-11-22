require 'test_helper'

class EvenreviewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @evenreview = evenreviews(:one)
  end

  test "should get index" do
    get evenreviews_url
    assert_response :success
  end

  test "should get new" do
    get new_evenreview_url
    assert_response :success
  end

  test "should create evenreview" do
    assert_difference('Evenreview.count') do
      post evenreviews_url, params: { evenreview: { comments: @evenreview.comments, event_id: @evenreview.event_id, scores: @evenreview.scores, user_id: @evenreview.user_id, user_type: @evenreview.user_type } }
    end

    assert_redirected_to evenreview_url(Evenreview.last)
  end

  test "should show evenreview" do
    get evenreview_url(@evenreview)
    assert_response :success
  end

  test "should get edit" do
    get edit_evenreview_url(@evenreview)
    assert_response :success
  end

  test "should update evenreview" do
    patch evenreview_url(@evenreview), params: { evenreview: { comments: @evenreview.comments, event_id: @evenreview.event_id, scores: @evenreview.scores, user_id: @evenreview.user_id, user_type: @evenreview.user_type } }
    assert_redirected_to evenreview_url(@evenreview)
  end

  test "should destroy evenreview" do
    assert_difference('Evenreview.count', -1) do
      delete evenreview_url(@evenreview)
    end

    assert_redirected_to evenreviews_url
  end
end
