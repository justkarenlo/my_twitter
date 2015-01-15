get '/profile' do
  if session['user_id'] != nil
  @user = User.find(session['user_id'])
  erb :'profile/index'
  else
    redirect '/login'
  end
end

post '/profile/new' do
  @tweet = Tweet.new(params[:tweet])
  redirect '/profile'
end
