class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.string :name
      t.integer :position
      t.datetime :start_time
      t.datetime :deadline
      t.text :notification

      t.timestamps
    end
  end
end
