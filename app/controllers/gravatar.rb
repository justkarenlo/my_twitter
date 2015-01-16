

get "/gravatar" do
  if user_logged_in?
    @user = User.id
    erb :"/gravatar/index"
  else
    redirect '/login'
  end
end