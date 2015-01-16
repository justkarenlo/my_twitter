get '/profile' do
  if user_logged_in?
    p 'profile owner'
    p @profile_owner = User.find(session['user_id'])
    p 'session id'
    p session['user_id']
    p 'that persons tweets'
    p @profile_owner.tweets
    @user = User.find(session['user_id'])
    @profile_owner = User.find(session['user_id'])
    erb :'profile/profile_page'
  else
    redirect '/login'
  end
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
