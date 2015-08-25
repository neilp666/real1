class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.string :budget
      t.string :duration
      t.string :organisation

      t.timestamps
    end
  end
end
