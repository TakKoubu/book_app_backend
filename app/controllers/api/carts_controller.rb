module Api
  class CartsController < ApplicationController
    def index
      carts = current_user.carts
      render json: carts.to_json(include: [:book])
    end
    
    def create
      cart = current_user.carts.create(cart_params)
      if cart.save
        render json: cart.to_json(include: [:book])
      else
        render json: cart.errors, status: 422
      end
    end

    def update
      cart = Cart.find(params[:id])
      cart.update(cart_params)
      render json: cart.to_json(include: [:book])
    end

    private
      def cart_params
        params.require(:cart).permit(:book_id, :item_number)
      end
  end
end
