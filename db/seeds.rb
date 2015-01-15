
bob = User.create(email:'bob@help.com', password: '123')
john = User.create(email: 'john@john.com', password: '123')

Tweet.create(content: "lolz", user_id: bob.id)
Tweet.create(content: "facetime!", user_id: bob.id)
Tweet.create(content: "appz", user_id: bob.id)
Tweet.create(content: "hey", user_id: john.id)
Tweet.create(content: "bye", user_id: john.id)



# 10.times do
#   User.create(
#     email: Faker::Internet.email
#   )
# end

# 15.times do
#   Tweet.create(
#     content: Faker::Lorem.characters(char_count = 140),
#     user_id: bob.id,
#     tweet_parent_id: nil
#   )
# end

