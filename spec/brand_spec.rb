require "spec_helper"

describe Brand do
  it { should have_and_belong_to_many :stores }
  it { should have_db_column(:price).of_type :money }
  it { should validate_presence_of(:brand_name) }
  it { should validate_uniqueness_of(:brand_name)}
end
