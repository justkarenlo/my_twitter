get '/profile' do
  if user_logged_in?
  @user = User.find(session['user_id'])
     @hash_email = (@user.email).to_md5
  erb :'profile/index'
  else
    redirect '/login'
  end
end

post '/profile/new' do
  if user_logged_in?
    @tweet = Tweet.new(params[:tweet])
    redirect '/profile'
  else
    redirect '/login'
  end
end


