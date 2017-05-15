class Store < ActiveRecord::Base
  has_and_belongs_to_many :brands
  validates :store, presence: true, uniqueness: { case_sensitive: false }, length: { maximum: 100, too_long: "%{count} characters maximum"}
  before_save :titlecase

  private
  def titlecase
    names = (self.store.split)
    names.each do |name|
      name.capitalize!
    end
    self.store = names.join(" ")
  end
end
