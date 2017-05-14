class Store < ActiveRecord::Base
  has_and_belongs_to_many :brands
  validates :store, presence: true, uniqueness: true
  # , length: { maximum: 100, too_long: "%{count} characters maximum"}
  # before_save :titlecase



end
