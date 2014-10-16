class Item < ActiveRecord::Base
  # Associations
  belongs_to  :user
  belongs_to  :container
  has_one     :item_container
  has_one     :compartment, through: :item_container
  # Validations
  validates :container_id, presence: true
  validates_uniqueness_of :name, scope: :container_id
  # Includes
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
