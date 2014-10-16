class AddHostContainerIdToContainer < ActiveRecord::Migration
  def change
    add_column :containers, :host_container_id, :integer
  end
end
