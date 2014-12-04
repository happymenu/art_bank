# -*- encoding : utf-8 -*-
class CommentsController < ApplicationController
  before_action :set_comment, only: [:show, :edit, :update, :destroy]

  def index
    @comments = Comment.all
  end

  def show
  end

  def new
    @comment = Comment.new
  end

  def edit
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.ip = request.remote_ip
    @comment.save
    redirect_to :back, notice: '操作成功'
  end

  def update
    @comment.update(comment_params)
    redirect_to :back, notice: '操作成功'
  end

  def destroy
    @comment.destroy
    redirect_to :back, notice: '操作成功'
  end

  private
    def set_comment
      @comment = Comment.find(params[:id])
    end

    def comment_params
      params.require(:comment).permit(:body, :ip, :im_id, :im_type, :item_id)
    end
end
