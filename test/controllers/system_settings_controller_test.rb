# -*- encoding : utf-8 -*-
require 'test_helper'

class SystemSettingsControllerTest < ActionController::TestCase
  setup do
    @system_setting = system_settings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:system_settings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create system_setting" do
    assert_difference('SystemSetting.count') do
      post :create, system_setting: { page_cache_time: @system_setting.page_cache_time, site_name: @system_setting.site_name }
    end

    assert_redirected_to system_setting_path(assigns(:system_setting))
  end

  test "should show system_setting" do
    get :show, id: @system_setting
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @system_setting
    assert_response :success
  end

  test "should update system_setting" do
    patch :update, id: @system_setting, system_setting: { page_cache_time: @system_setting.page_cache_time, site_name: @system_setting.site_name }
    assert_redirected_to system_setting_path(assigns(:system_setting))
  end

  test "should destroy system_setting" do
    assert_difference('SystemSetting.count', -1) do
      delete :destroy, id: @system_setting
    end

    assert_redirected_to system_settings_path
  end
end
