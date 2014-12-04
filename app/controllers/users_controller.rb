# -*- encoding : utf-8 -*-
class UsersController < ApplicationController

  before_action :authenticate_user!
  before_action :find_by_id, :only => [:show,:edit, :update, :edit_company, :show_account_history,
    :show_pay_page]
  def index
    @users = User.all
  end

  def welcome
  end

  def show
  end

  def show_account_history
  end

  def show_pay_page
  end

  def pay
    # call bank interface
    remote_result = '成功'
    params.permit :voucher_code, :cost
    UserAccountRecord.create user_id: current_user.id,
      voucher_code: params[:voucher_code],
      cost: params[:cost],
      account: current_user.bank_account_info,
      result: remote_result,
      raw_log: "{'result': 'success'}"

    redirect_to :back, notice: "操作成功, 入账：#{params[:cost]}元"
  end

  def edit
  end

  def edit_company
  end

  def update
    @user.update user_params
    redirect_to :back, notice: 'ok'
  end
  private
  def find_by_id
    @user = User.find params[:id]
  end
  def user_params
    params.require(:user).permit :email, :encrypted_password, :reset_password_token,
      :name, :company_name, :address, :primary_contact_name, :primary_contact_email, :primary_contact_telephone,
      :bank_name, :bank_account_owner_name, :bank_account
  end
end
