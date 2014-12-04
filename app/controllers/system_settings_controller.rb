# -*- encoding : utf-8 -*-
class SystemSettingsController < ApplicationController
  before_action :set_system_setting, only: [:show, :edit, :update, :destroy]
#  before_action :authenticate_user!

  def index
    @system_setting = SystemSetting.first || SystemSetting.create
  end

  def show
  end

  def new
    @system_setting = SystemSetting.new
  end

  def edit
  end

  def create
    @system_setting = SystemSetting.new(system_setting_params)
    @system_setting.save
    redirect_to "/system_settings", notice: '操作成功'
  end

  def update
    @system_setting.update(system_setting_params)
    redirect_to :back, notice: '操作成功'
  end

  def destroy
    @system_setting.destroy
    redirect_to :back, notice: '操作成功'
  end

  private
    def set_system_setting
      @system_setting = SystemSetting.find(params[:id])
    end

    def system_setting_params
      params.require(:system_setting).permit(:site_name, :page_cache_time)
    end
end
