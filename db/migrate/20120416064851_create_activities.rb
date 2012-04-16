class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :title
      t.integer :club_id
      t.integer :user_id

      t.timestamps
    end
  end
end
