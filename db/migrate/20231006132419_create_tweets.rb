class CreateTweets < ActiveRecord::Migration[6.1]
  def change
    create_table :tweets do |t|
      t.string :name
      t.string :genre
      t.text :title
      t.text :about
      t.string :goal
      t.string :category
      t.string :image
      t.integer :user_id
      t.boolean :admin
      t.timestamps
    end
  end
end
