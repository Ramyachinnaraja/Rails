class UsersController < ApplicationController
  
  def sign_up

  end

  def index
  @users = User.all
  end


  def login

  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to :login
    else
      redirect_to :sign_up
    end
  end

  def authenticate
    user=User.where("email_id=? and password=?", params[:email_id], params[:password])
   
    if !user.blank?
      flash[:notice] = "#{user.first.username} logged in successfully"
      redirect_to action: :index
    else
      flash[:notice] = "User not found."
      redirect_to action: :login
    end
  end

  private
  def user_params
    params.permit(:username, :email_id, :password)
  end
end
      


