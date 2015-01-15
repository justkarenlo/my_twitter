class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.string :content
      t.integer :user_id
      t.integer :tweet_parent_id

      t.timestamps
    end
  end
end
