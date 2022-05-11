class PagesController < ApplicationController
  def index
  end

  def dashboard
    if params[:email].present?
      @users = User.where('email = ?', params[:email])
    else
      @users = User.find_valid
    end
      
  end
  
  def create
    @user = User.create(email: params[:email], age: params[:age], message: params[:message])
  end

end
