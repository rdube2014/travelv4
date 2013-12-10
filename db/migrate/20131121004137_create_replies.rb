class CreateReplies < ActiveRecord::Migration
  def change
    create_table :replies do |t|
      t.integer :user_id
      t.integer :request_id
      t.text :reply_text
      t.integer :expert_star_rating
      t.text :expert_review
      t.integer :traveler_star_rating

      t.timestamps
    end
  end
end
