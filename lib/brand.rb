class Brand < ActiveRecord::Base
  has_and_belongs_to_many :stores
  validates :brand_name, presence: true
  # length: { maximum: 100, too_long: "%{count} characters maximum"}

end
