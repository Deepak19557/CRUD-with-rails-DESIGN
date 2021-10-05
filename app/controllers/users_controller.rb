class UsersController < ApplicationController

  def index
    @users = User.all 
  end 

  def new
      @users =  User.all 
      @cities = City.all
  end

  def create
      @user = User.create(user_params)
      redirect_to root_path #user_path(@user.id)
  end 
  
  def edit
      @cities = City.all
      @user =   User.find(params[:id])
  end
  
  def update
      @user = User.find(params[:id])
      @user = @user.update(user_params)
      redirect_to root_path
  end
  
  def show
    @user = User.find(params[:id]) 
    @users =  User.all 
  end
  
  def destroy 
    
    @user = User.find(params[:id])
    @user.destroy 
    #format.js { render :layout => false }
    
    redirect_to root_path
  end

  def user_params
    params.require(:user).permit(:first_name,:last_name, :city_name,:gender,:category,:mobile_no,images:[])
  end
end
  







