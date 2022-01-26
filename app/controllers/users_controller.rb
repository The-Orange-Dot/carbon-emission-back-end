class UsersController < ApplicationController

  get "/users" do
    User.all.to_json
  end

  patch "/users/update_info/:id" do
    user = User.find(params[:id])  
    user.update(
      first_name: params[:first_name],
      last_name: params[:last_name],
      password: params[:password],
      email: params[:email],
      image: params[:image]
    )
    user.to_json
  end

end