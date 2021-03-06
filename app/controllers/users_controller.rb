class UsersController < ApplicationController
  # validates :password, presence: true

  def new
    @user = User.new
  end

    def create

    @user = User.create(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      redirect_to new_user_path
    end
  end


  def index
    # @user = User.find_by(params[:id])
  end

  def show
    @user = User.find(params[:id])
  end



  private

  def user_params
    params.require(:user).permit(:name, :password, :happiness, :nausea, :height, :tickets, :admin)

  end

end
