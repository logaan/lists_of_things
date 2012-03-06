class AddParentAndChildCountCachesToThings < ActiveRecord::Migration
  def change
    add_column :things, :parents_count, :integer
    add_column :things, :children_count, :integer
  end
end
