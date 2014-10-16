class Container < ActiveRecord::Base
  # Associations
  belongs_to  :user
  has_many    :items
  has_one     :item_container
  has_one     :host_item, through: :item_container
end

# == Schema Information
#
# Table name: containers
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#  created_at  :datetime
#  updated_at  :datetime
#  user_id     :integer
#
