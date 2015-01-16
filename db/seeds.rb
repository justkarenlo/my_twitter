
bob = User.create(email:'bob@help.com', password: '123')
john = User.create(email: 'john@john.com', password: '123')

rob = User.create(email: 'rob@rob.com', password: '123')
joe = User.create(email: 'joe@joe.com', password: '123')
mike = User.create(email: 'mike@mike.com', password: '123')
sam = User.create(email: 'sam@sam.com', password: '123')


Tweet.create(content: "lolz", user_id: bob.id)
Tweet.create(content: "facetime!", user_id: bob.id)
Tweet.create(content: "appz", user_id: bob.id)
Tweet.create(content: "hey", user_id: john.id)
Tweet.create(content: "bye", user_id: john.id)

Follower.create(leader_id: 2, follower_id: 3)
Follower.create(leader_id: 2, follower_id: 4)
Follower.create(leader_id: 2, follower_id: 5)
Follower.create(leader_id: 2, follower_id: 6)
Follower.create(leader_id: 1, follower_id: 6)



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

