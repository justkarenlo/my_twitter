get "/" do
  @token = user_logged_in?
  @tweets = Tweet.all

  if user_logged_in?
    @user = User.find(session['user_id'])
    erb :index
  else
    redirect '/login'
  end
end

get '/logout' do
  session['user_id'] = nil
  redirect '/'
end
