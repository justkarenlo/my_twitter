get "/" do
  if session['user_id'] != nil
    @tweets = Tweet.all
    erb :"/tweets/new"
  else
    redirect '/login'
  end
end

get "/tweets/new" do
	@tweets = Tweet.all
erb :"/tweets/new"
end

get "/tweets/:id" do
	@tweet = Tweet.find(params[:id])
erb :"/tweets/show"
end


post "/tweets" do
	@tweets = Tweet.create(params[:tweet])
redirect "/"
end
