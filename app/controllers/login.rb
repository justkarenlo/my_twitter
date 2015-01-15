get '/login' do
  erb :'login/login'
end

post '/login' do
  if login
    redirect '/'
  else
    erb :'login/login'
  end
end

post '/register' do
  new_user = User.new(email: params['email'], password: params['password'])
  if new_user.save
    login
    redirect '/'
  else
    erb :'login/login'
  end
end

post '/logout' do
  session.delete('user_id')

  redirect '/'
end

get '/' do
  "stand in for main page"
end
