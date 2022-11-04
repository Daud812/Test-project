class AddTypeAndStatusToBugs < ActiveRecord::Migration[5.1]
  def change
    add_column :bugs, :bugtype, :integer, default: 0
    add_column :bugs, :status, :integer, default: 0
  end
end
