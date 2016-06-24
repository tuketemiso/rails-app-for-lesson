class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.index :user_id
      t.string :content
      t.index :created_at
      t.timestamps null: false
    end
  end
end
