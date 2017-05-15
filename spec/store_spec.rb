require "spec_helper"

describe Store do
  it { should have_and_belong_to_many :brands}
  it { should validate_presence_of :store }
  it { should validate_uniqueness_of :store }

  it "limits the length of the store name to 100 characters" do
    store = Store.create(store: "s"*101)
    expect(store.save).to eq false
  end
  
  it "returns the store name in title case" do
    store = Store.create(store: "susha's shOes")
    expect(store.store).to eq "Susha's Shoes"
  end
end
