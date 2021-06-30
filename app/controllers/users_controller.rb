class UsersController < ApplicationController
  
  def index
      @users = User.all
  end
  
  def show
   @user = User.find(params[:id])
   @reservations = @user.reservations 
  end
  
  def update
      @user = User.find(params[:id])
  if @user.update(params.require(:user).permit(:icon_image, :profile_name, :self_introduction))
        flash[:notice] = "ユーザーIDが「#{@user.id}」の情報を更新しました"
        redirect_to :users
  else
        render "edit"
  end
  end
  
  
end
