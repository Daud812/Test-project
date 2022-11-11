class AddCreatorIdToBugs < ActiveRecord::Migration[5.1]
  def change
    add_column :bugs, :creator_id, :integer
    add_foreign_key :bugs ,:users, column: :creator_id
  end
end
