module Api
  class OrdersController < ApplicationController
    def create
      current_user.carts.each do |cart|
        # orderを作成する
        @order = current_user.orders.build(user_id: current_user.id)
        # order_detailsを作成する
        @order.order_details.build(
          book_id: cart.book_id,
          item_number: cart.item_number,
          item_price: cart.book.price,
          point: ((cart.book.price * 1.1 ).floor * cart.item_number * 0.1).floor
        )
      end
      # cartの中身を削除
      current_user.carts.destroy_all

      if @order.save
        render json: @order
      else
        render json: @order.errors, status: 422
      end
    end

    private
      def order_params
        params.require(:order).permit(:user_id)
      end
  end
end
