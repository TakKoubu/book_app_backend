module Api
  class CartsController < ApplicationController
    def index
    end
    
    def create
      cart = current_user.carts.create(cart_params)
      cart.save
    end

    def destroy
    end

    private
      def cart_params
        params.require(:cart).permit(:book_id, :item_number)
      end
  end
end
