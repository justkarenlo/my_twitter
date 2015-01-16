get "/" do
  @token = user_logged_in?
  @tweets = Tweet.all

  erb :index
end

get '/logout' do
  session['user_id'] = nil
  redirect '/'
end
