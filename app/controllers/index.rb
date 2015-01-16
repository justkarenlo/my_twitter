get "/" do
  @token = user_logged_in?
  @tweets = Tweet.all

  #OLD WAY
  # erb :index
  #FORCE DIRECTLY TO LOGIN
  redirect '/login'
end

get '/logout' do
  session['user_id'] = nil
  redirect '/'
end
