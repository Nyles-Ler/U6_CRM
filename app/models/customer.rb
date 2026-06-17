# Generated Customer model
class Customer < ApplicationRecord

  # Customers can have an image attached
  has_one_attached :image

  # Customer validations
  # Every customer should have a name
  validates :full_name, presence: true
  # Every customer should have a phone number
  validates :phone_number, presence: true
  # Email can be blank, if one is entered it must be unique
  validates :email_address, uniqueness: true, allow_blank: true

  #
  def self.ransackable_attributes(auth_object = nil)
    ["created_at","email_address", "full_name", "id", "notes", "phone_number", "updated_at"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["image_attachment", "image_blob"]
  end

end
