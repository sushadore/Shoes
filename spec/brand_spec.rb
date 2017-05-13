require "spec_helper"

describe Brand do
  it { should have_and_belong_to_many :stores }
  it { should have_db_column(:price).of_type :money }
  it { should validate_presence_of(:brandname) }
  it { should validate_uniqueness_of(:brandname)}
  it { should validate_length_of(:brandname)}


  it "returns the brand name in title case" do
    brand = Brand.create({brandname: "jimmy choo"})
    expect(brand.brandname).to eq('Jimmy Choo')
  end

end
