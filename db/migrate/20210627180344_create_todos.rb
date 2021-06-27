class CreateTodos < ActiveRecord::Migration[6.1]
  def change
    create_table :todos do |t|
      t.string :text
      t.boolean :isCompleted
      t.bigint :project_id

      t.timestamps
    end

    add_foreign_key "todos", "projects"
  end
end
