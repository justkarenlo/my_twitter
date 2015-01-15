def authenticate
  user = User.find_by(email: params['email'])
  return false if !user
  if user.password == params['password']
    session['user_id'] = user.id
    return true
  else
    return false
  end
end
