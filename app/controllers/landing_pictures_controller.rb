# -*- encoding : utf-8 -*-
class LandingPicturesController < ApplicationController
  before_action :set_landing_picture, only: [:show, :edit, :update, :destroy]
#  before_action :authenticate_user!, except: [:index]

  caches_page :index

  def welcome
    render layout: false
  end

  def index
    @menus = LandingPicture.all
    @current_menu = LandingPicture.find_by_id(params[:current_menu_id] ) || LandingPicture.first
    render layout: 'front'
  end

  def interface_index
    @menus = LandingPicture.all
    render json: {
      result: @menus.map{ |menu|
        {
          id: menu.id,
          name: menu.name
        }
      },
      comment: '测试用接口. 用法： 显示所有的分类（一级菜单）, 如：主览页面，企业章程'
    }
  end

  def admin_index
    @landing_pictures = LandingPicture.all
  end

  def show
  end

  def new
    @landing_picture = LandingPicture.new
  end

  def edit
  end

  def create
    @landing_picture = LandingPicture.new(landing_picture_params)
    @landing_picture.save
    expire_page action: 'index'
    redirect_to :back, notice: '操作成功'
  end

  def update
    @landing_picture.update(landing_picture_params)
    expire_page action: 'index'
    redirect_to :back, notice: '操作成功'
  end

  def destroy
    @landing_picture.destroy
    expire_page action: 'index'
    redirect_to :back, notice: '操作成功'
  end

  private
    def set_landing_picture
      @landing_picture = LandingPicture.find(params[:id])
    end

    def landing_picture_params
      params.require(:landing_picture).permit(:name, :logo, :landing_picture_type)
    end
end
