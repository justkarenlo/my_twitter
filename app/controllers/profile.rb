get '/profile' do
  if user_logged_in?
  @user = User.find(session['user_id'])
  erb :'profile/index'
  else
    redirect '/login'
  end
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
