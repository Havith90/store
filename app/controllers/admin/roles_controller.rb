class Admin::RolesController < ApplicationController

    layout 'admin_layout'
    before_action :set_role, only: [:show, :edit, :update, :destroy]

      #GET /roles
    def index
      @roles = Role.all
    end

    #GET /roles/:id
    def show
    end
    #GET /roles/:new
    def new
      @roles = Role.new
    end
#GET /roles/:id/edit
    def edit
    end

    #POST /roles
    def create
      @roles = Role.new(params_role)
      if @role.save
        redirect_to_admin_roles_path
      else  
        render :new
      end
  end

  #PUT/PATCH /roles/:id
  def update
    if @role.update(params_role)
      redirect_to_admin_roles_path
    else    
      render :edit
    end
  end

  #DELETE /roles/:id
  def destroy
    @role.destroy
    redirect_to_admin_roles_path
  end

  private
  def params_role
    params.require(:role).permit(:name)
  end

  def set_role
    @role = Role.find(params[:id])
  rescue
    flash[:set_role_error] = 'Could not find the record #{params[:id]}'
    redirect_to_admin_roles_path
  end

end