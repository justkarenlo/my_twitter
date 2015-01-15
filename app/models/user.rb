class User < ActiveRecord::Base
  has_many :tweets

  validates :email, uniqueness: true


end
