get '/profile' do
  @user = User.find(session['user_id'])
  erb :'profile/index'
end


post '/profile/new' do
  @tweet = Tweet.new(params[:tweet])
  redirect '/profile'
end
