class CreateActivities < ActiveRecord::Migration[5.1]
  def change
    create_table :activities do |t|
      t.integer :user_id
      t.string :type
      t.integer :object_id

      t.timestamps
    end
  end
end
