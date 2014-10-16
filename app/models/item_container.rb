class ItemContainer < ActiveRecord::Base
  # Associations
  belongs_to  :item
  belongs_to  :container

end

# == Schema Information
#
# Table name: item_containers
#
#  id           :integer          not null, primary key
#  item_id      :integer
#  container_id :integer
#  created_at   :datetime
#  updated_at   :datetime
#
