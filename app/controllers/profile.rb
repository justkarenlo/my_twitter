get '/profile' do
    redirect "/users/#{session['user_id']}"
end

get '/users/:id' do
  if user_logged_in?
    @user = User.find(session['user_id'])
    @profile_owner = User.find(params[:id])
    erb :'profile/profile_page'
  else
    erb :'login/login'
  end
end

get '/follow/:id' do
  if user_logged_in?
    @user = User.find(session['user_id'])
    @user.follow(params[:id])

    redirect "/users/#{session['user_id']}"
  end

end

get '/search' do
  @result = User.find_by_email(params[:email])


  erb :'/profile/search_results'

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
