module Api
  class OrdersController < ApplicationController
    def create
      order = current_user.orders.build(order_params)
      current_user.carts.destroy
      if order.save
        render json: order.to_json(include:[:book])
      else
        render json: order.errors, status: 422
      end
    end

    private
      def cart_params
        params.require(:order).permit(:book_id, :item_number, :price, :point)
      end
  end
end
