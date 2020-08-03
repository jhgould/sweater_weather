class Api::V1::UsersController < ApplicationController 
  
  def create 
    user = User.create(user_params)
    if user.save 
      token = user.generate_token
      user.update(api_key: token)
      user.save! 
      render json: UserSerializer.new(user)
    else 
      render :json => { status: 400, :errors => user.errors.full_messages }
    end 
  end 

  private 

  def user_params 
    params.permit(:email, :password, :password_confirmation)
  end 
end