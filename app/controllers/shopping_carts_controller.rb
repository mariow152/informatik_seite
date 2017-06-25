class ShoppingCartsController < ApplicationController
    before_action :authenticate_user!
  before_filter :extract_shopping_cart

  def create
    @games = Game.find(params[:game_id])
    @shopping_cart.remove(@games, 1)
    @shopping_cart.add(@games, @games.price)
    
    
    redirect_to shopping_cart_path
  end
    def destroy
        @shopping_cart.clear
        
        redirect_to shopping_cart_path
    end
  def show

  end

  private
  def extract_shopping_cart
    shopping_cart_id = session[:shopping_cart_id]
    @shopping_cart = session[:shopping_cart_id] ? ShoppingCart.find(shopping_cart_id) : ShoppingCart.create
    session[:shopping_cart_id] = @shopping_cart.id
  end
end