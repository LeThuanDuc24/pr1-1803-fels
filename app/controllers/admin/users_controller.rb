class Admin::UsersController < Admin::ApplicationController

  def index
    @users = User.paginate page: params[:page], per_page:5
  end

  def show
    @user = User.find params[:id]
  end

  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User deleted"
    redirect_to admin_users_url
  end
end
