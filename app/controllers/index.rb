get "/" do
  @token = user_logged_in?
  @tweets = Tweet.all

  if user_logged_in?
    redirect '/profile'
  else
    redirect '/login'
  end
end

get '/logout' do
  session['user_id'] = nil
  redirect '/'
end
