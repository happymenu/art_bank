# -*- encoding : utf-8 -*-
class UserAccountRecordsController < ApplicationController
  before_action :set_user_account_record, only: [:show, :edit, :update, :destroy]

  def index
    @user_account_records = UserAccountRecord.all
  end

  def show
  end

  def new
    @user_account_record = UserAccountRecord.new
  end

  def edit
  end

  def create
    @user_account_record = UserAccountRecord.new(user_account_record_params)
    @user_account_record.save
    redirect_to :back, notice: 'success'
  end

  def update
    @user_account_record.update(user_account_record_params)
    redirect_to :back, notice: 'success'
  end

  def destroy
    @user_account_record.destroy
    redirect_to :back, notice: 'success'
  end

  private
    def set_user_account_record
      @user_account_record = UserAccountRecord.find(params[:id])
    end

    def user_account_record_params
      params.require(:user_account_record).permit :voucher_code, :cost, :account, :result, :raw_log, :user_id
    end
end
