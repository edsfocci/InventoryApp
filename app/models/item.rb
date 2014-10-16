class Item < ActiveRecord::Base
  # Associations
  belongs_to  :user
  belongs_to  :container
  has_one     :item_container
  has_one     :compartment, through: :item_container
  #Includes
  acts_as_taggable

end

# == Schema Information
#
# Table name: items
#
#  id           :integer          not null, primary key
#  name         :string(255)
#  description  :text
#  created_at   :datetime
#  updated_at   :datetime
#  container_id :integer
#  user_id      :integer
#
