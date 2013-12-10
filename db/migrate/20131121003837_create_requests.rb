class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.integer :user_id
      t.date :created_date
      t.date :trip_start_date
      t.date :trip_end_date
      t.string :travel_to_city
      t.string :travel_to_state
      t.string :category
      t.text :request_text

      t.timestamps
    end
  end
end
