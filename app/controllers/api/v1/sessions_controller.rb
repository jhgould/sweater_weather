class Api::V1::SessionsController < ApplicationController
  def create 
    user = User.find_by(email: params[:email])
    if user.authenticate(params[:password])
      token = user.generate_token
      user.update(api_key: token)
      user.save
      render json: UserSerializer.new(user)
    else 
      render :json => { status: 400, :errors => "Credentials are bad" }
    end 
  end 
end
