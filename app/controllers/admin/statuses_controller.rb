class Admin::StatusesController < ApplicationController
  layout 'admin_layout'
  before_action :set_status, only: [:show, :edit, :update, :destroy]

  def index
  
  end

  def new
  end

  def show
  end

  def edit
  end
end
