# -*- encoding : utf-8 -*-
require 'test_helper'

class LandingPicturesControllerTest < ActionController::TestCase
  setup do
    @landing_picture = landing_pictures(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:landing_pictures)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create landing_picture" do
    assert_difference('LandingPicture.count') do
      post :create, landing_picture: { landing_picture_type: @landing_picture.landing_picture_type, logo: @landing_picture.logo, name: @landing_picture.name }
    end

    assert_redirected_to landing_picture_path(assigns(:landing_picture))
  end

  test "should show landing_picture" do
    get :show, id: @landing_picture
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @landing_picture
    assert_response :success
  end

  test "should update landing_picture" do
    patch :update, id: @landing_picture, landing_picture: { landing_picture_type: @landing_picture.landing_picture_type, logo: @landing_picture.logo, name: @landing_picture.name }
    assert_redirected_to landing_picture_path(assigns(:landing_picture))
  end

  test "should destroy landing_picture" do
    assert_difference('LandingPicture.count', -1) do
      delete :destroy, id: @landing_picture
    end

    assert_redirected_to landing_pictures_path
  end
end
