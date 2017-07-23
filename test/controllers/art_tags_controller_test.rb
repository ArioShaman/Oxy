require 'test_helper'

class ArtTagsControllerTest < ActionController::TestCase
  setup do
    @art_tag = art_tags(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:art_tags)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create art_tag" do
    assert_difference('ArtTag.count') do
      post :create, art_tag: {  }
    end

    assert_redirected_to art_tag_path(assigns(:art_tag))
  end

  test "should show art_tag" do
    get :show, id: @art_tag
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @art_tag
    assert_response :success
  end

  test "should update art_tag" do
    patch :update, id: @art_tag, art_tag: {  }
    assert_redirected_to art_tag_path(assigns(:art_tag))
  end

  test "should destroy art_tag" do
    assert_difference('ArtTag.count', -1) do
      delete :destroy, id: @art_tag
    end

    assert_redirected_to art_tags_path
  end
end
