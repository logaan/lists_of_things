class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.integer :parent_id
      t.integer :child_id

      t.timestamps
    end
  end
end
