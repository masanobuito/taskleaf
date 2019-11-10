class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :name
      t.text :description
      t.bigint "user_id", null: false
      t.index ["user_id"], name: "index_tasks_on_user_id"

      t.timestamps
    end
  end
end
