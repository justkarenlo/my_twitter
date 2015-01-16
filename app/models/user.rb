class User < ActiveRecord::Base
  has_many :tweets
  has_many :followers, :foreign_key => 'leader_id', :class_name => "Follower"
  has_many :leaders, :foreign_key => 'follower_id', :class_name => "Follower"

  validates :email, uniqueness: true

  # users.password_hash in the database is a :string
  include BCrypt

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

  def follow(user_id)
    Follower.create(follower_id: self.id, leader_id: user_id)
  end

end
