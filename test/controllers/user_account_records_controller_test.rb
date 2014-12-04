# -*- encoding : utf-8 -*-
require 'test_helper'

class UserAccountRecordsControllerTest < ActionController::TestCase
  setup do
    @user_account_record = user_account_records(:one)
    request.env["HTTP_REFERER"] = root_path
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_account_records)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_account_record" do
    assert_difference('UserAccountRecord.count') do
      post :create, user_account_record: { account: @user_account_record.account, cost: @user_account_record.cost, raw_log: @user_account_record.raw_log, result: @user_account_record.result, voucher_code: @user_account_record.voucher_code }
    end

    assert_redirected_to user_account_record_path(assigns(:user_account_record))
  end

  test "should show user_account_record" do
    get :show, id: @user_account_record
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_account_record
    assert_response :success
  end

  test "should update user_account_record" do
    patch :update, id: @user_account_record, user_account_record: { account: @user_account_record.account, cost: @user_account_record.cost, raw_log: @user_account_record.raw_log, result: @user_account_record.result, voucher_code: @user_account_record.voucher_code }
    assert_redirected_to user_account_record_path(assigns(:user_account_record))
  end

  test "should destroy user_account_record" do
    assert_difference('UserAccountRecord.count', -1) do
      delete :destroy, id: @user_account_record
    end

    assert_redirected_to user_account_records_path
  end
end
