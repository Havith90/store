class PagesController < ApplicationController
  # def home
  #   cookies[:mi_primera_cookie] = "Hola mundo"
  # end

  include PagesHelper
  before_action :set_cart_from_cookie

  def home
    # 2. Mostrar la cantidad de productos en el carrito

    @products = Product.includes(:category).shuffle 
  end

  def cart
  end

  
end
