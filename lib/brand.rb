class Brand < ActiveRecord::Base
  has_and_belongs_to_many :stores
  validates :brandname, presence: true, uniqueness: { case_sensitive: false }, length: { maximum: 100, too_long: "%{count} characters maximum"}
  before_save :titlecase

  private

  def titlecase
    names = (self.brandname.split)
    names.each do |name|
      name.capitalize!
    end
    self.brandname = names.join(" ")
  end
end
