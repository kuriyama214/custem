class UsersController < ApplicationController
  def index
    @users = User.order("id ASC").page(params[:page]).per(10)
  end
  
  def new
    @user = User.new 
  end
  
  def create
    User.create(create_params)
  end
  
  def show
    @user = User.find(params[:id])
  end

  def destroy
  end
  
  def update
  end
  
  def search
    @users = User.search(params[:search]).order("id ASC").page(params[:page]).per(10)
  end
  
  private
  def create_params
    params.require(:user).permit(:family_name,:family_name_kana,:first_name,:first_name_kana,:gender,:birthday,:age,:job,:tell_number,:email,:post_code,:address,:building,:memo)
  end
end
