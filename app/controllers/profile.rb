get '/profile' do
    redirect "/users/#{session['user_id']}"
end

get '/users/:id' do
  if user_logged_in?
    @user = User.find(session['user_id'])
  else
    @user = User.new(email: 'Not Logged In')
  end
  @profile_owner = User.find(params[:id])
  erb :'profile/profile_page'
end

### I don't think this actually works right now. ctg ###
# post '/profile/new' do
#   if user_logged_in?
#     @tweet = Tweet.new(params[:tweet])
#     redirect '/profile'
#   else
#     redirect '/login'
#   end
# end
