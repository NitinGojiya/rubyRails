class UsersController < ApplicationController
  def index
    @users1=User.all
  end
  def new
    @users= User.new
  end
  def create
    @users=User.new(user_param)
    if @users.save
      redirect_to users_path, notice: "Users created successfully."

    else
        render :new, status: :unprocessable_entity
    end
  end
  private
  def user_param
    params.require(:user).permit(:email, :password)
  end
end
