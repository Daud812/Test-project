class AddDeveloperrIdToBugs < ActiveRecord::Migration[5.1]
  def change
    add_column :bugs, :developer_id, :integer
    add_foreign_key :bugs ,:users, column: :developer_id

  end
end
