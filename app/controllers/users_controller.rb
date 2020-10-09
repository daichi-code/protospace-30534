class UsersController < ApplicationController


  def show
    @user = User.find(params[:id])
    @name = @user.name
    @prototype = @user.prototypes
  end


  private
  def user_params
    params.require(:user).permit(:name, :profile, :occupation, :position).merge(user_id: current_user.id)
  end

  def prototype_params
    params.require(:prototype).permit(:title, :catch_copy, :concept, :image).merge(user_id: current_user.id)
  end
end
