class Follower < ActiveRecord::Base
  # Remember to create a migration!
   belongs_to :follower, :class_name => 'User'
   belongs_to :leader, :class_name => 'User'

  def followers_email
    User.find(self.follower_id).email
  end

  def leaders_email
    User.find(self.leader_id).email
  end
end
