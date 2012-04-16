class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :title
      t.integer :club_id
      t.string :photo

      t.timestamps
    end
  end
end
