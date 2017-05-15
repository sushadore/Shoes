require "spec_helper"

describe Brand do
  it { should have_and_belong_to_many :stores }
  it { should validate_presence_of :brandname }
  it { should validate_uniqueness_of :brandname }

  it "limits the length of the brand name to 100 characters" do
    brand = Brand.create(brandname: "s"*101)
    expect(brand.save).to eq false
  end

  it "returns the brand name in title case" do
    brand = Brand.create(brandname: "jimmy choo")
    expect(brand.brandname).to eq "Jimmy Choo"
  end
end
