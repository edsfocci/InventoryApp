class Container < ActiveRecord::Base
  # Associations
  belongs_to  :user
  has_many    :items
  has_one     :item_container
  has_one     :host_item, through: :item_container
  belongs_to  :host_container,
              class_name:   "Container",
              foreign_key:  "host_container_id"
  has_many    :inner_containers,
              class_name:   "Container",
              foreign_key:  "host_container_id"
  # Validations
  validates_uniqueness_of :name, scope: [:host_container_id, :user_id]
  # Includes
  acts_as_taggable
end

# == Schema Information
#
# Table name: containers
#
#  id                :integer          not null, primary key
#  name              :string(255)
#  description       :text
#  created_at        :datetime
#  updated_at        :datetime
#  user_id           :integer
#  host_container_id :integer
#
