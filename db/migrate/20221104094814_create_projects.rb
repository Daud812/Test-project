class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :titel
      t.text :body

      t.timestamps
    end
  end
end
