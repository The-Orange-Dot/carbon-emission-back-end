class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # i left this in here because it relates to the histories more
  # then it relates to the user
  patch "/user/:id" do
    user = User.find(params[:id])  
  
    user.update(
      first_name: params[:first_name],
      last_name: params[:last_name],
      password: params[:password],
      email: params[:email],
      image: params[:image]
    )
  end

end
