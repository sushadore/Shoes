class Brand < ActiveRecord::Base
  has_and_belongs_to_many :stores
  validates :brandname, presence: true
  validates :brandname, uniqueness: true
  validates :brandname, length: { maximum: 100, too_long: "%{count} characters maximum"}
  before_save :titlecase

private

  def titlecase
    titles =[]
    names = self.brandname.split
    names.each do |name|
      titles.push(name.capitalize)
    end
    self.brandname=titles.join(" ")
  end
end
