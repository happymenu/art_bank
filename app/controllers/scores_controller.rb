# -*- encoding : utf-8 -*-
class ScoresController < ApplicationController
  before_action :set_score, only: [:show, :edit, :update, :destroy]

  def index
    @scores = Score.all
  end

  def show
  end

  def new
    @score = Score.new
  end

  def edit
  end

  def create
    @score = Score.new(item_id: params[:item_id], ip: request.remote_ip)
    @score.save
    redirect_to :back, notice: '操作成功'
  end

  def update
    @score.update(score_params)
    redirect_to :back, notice: '操作成功'
  end

  def destroy
    @score.destroy
    redirect_to :back, notice: '操作成功'
  end

  private
    def set_score
      @score = Score.find(params[:id])
    end

    def score_params
      params.require(:score).permit(:item_id, :ip, :im_id, :im_type)
    end
end
