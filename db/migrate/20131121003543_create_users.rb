class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name 
      t.string :last_name
      t.string :home_city
      t.string :home_state
      t.string :home_country
      t.string :user_name
      t.string :password
      t.string :photo_url

      t.timestamps
    end
  end
end
