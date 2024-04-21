class OrdersController < ApplicationController
  before_action :set_order_params, only: [:create]

  def create
    @order = Order.new(order_params)

    if @order.valid?
      @order.save
      render json: @order, status: :created
    else
      render json: @order.errors, status: :unprocessable_entity
    end
  end

  private

  def set_order_params
    @order_params = params.require(:order).permit(:customer_id, computer: [:processor_id, :motherboard_id, :ram_id, :video_card_id])
  end
end
