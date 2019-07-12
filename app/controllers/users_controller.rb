class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new()
    if @user.save
        session[:user_id] = user.id
        flash[:success] = 'Successfully created user!'
        redirect_to '/'
    else
      flash[:warning] = 'Invalid email or password. Please try again.'
      redirect_to '/users/new'
    end
  end
end
