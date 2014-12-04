# -*- encoding : utf-8 -*-
class CommonsController < ApplicationController

  # PUT
  def sort
    params.permit :entity_class, :base_index, :ids, :position
    entity_class = params[:entity_class]
    # 基础偏移量。一般是0. 如果要兼容现有数据，就设置个比现有数据的position还小的初始值
    base_index = params[:base_index].to_i || 0
    params[:ids].each_with_index do |id, index|
      entity_class.constantize.find(id).update_attribute(:position, base_index + index)
    end
    render json: 'success'
  end
end
