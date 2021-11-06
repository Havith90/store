class Admin::CategoriesController < ApplicationController
  layout 'admin_layout'
  before_action :set_category, only: [:show, :edit, :update, :delete]

  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def show

  end

  def edit
  end

  def create
    @category = Category.new(params_category)
    if @category.save
      redirect_to admin_categories_path
    else
      render :new
    end
  end

  def update
    if @category.update(params_category)
      redirect_to admin_categories_path
    else
      render :edit
    end
  end

  def destroy
    @category.destroy
    redirect_to admin_categories_path
  end

  private
  def params_category
    params.require(:category).permit(:name)
  end

  def set_category
    @category = Category.find(params[:id])
  rescue
    flash[:set_category_error] = "Could not find the record #{params[:id]}"
    redirect_to admin_categories_path
    
    #el flash es cmo un mensajero de rails, q lleva el textoq uno quiere a la vista q corresponda
  end


end
