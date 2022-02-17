class Users::SessionsController < Devise::SessionsController
  protect_from_forgery with: :null_session

  def create
    user = User.find_by(email: params[:user][:email])
    if user and user.valid?(params[:user][:password])
      redirect_to topic_path
    else
      redirect_to root_path, alert: "Invalid Username or Password"
    end
  end
end
