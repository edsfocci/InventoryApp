class CreateItemContainers < ActiveRecord::Migration
  def change
    create_table :item_containers do |t|
      t.integer :item_id
      t.integer :container_id

      t.timestamps
    end
  end
end
