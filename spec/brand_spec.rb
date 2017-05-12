require "spec_helper"

describe Brand do
  it { should have_and_belong_to_many :stores}
  it { should have_db_column(:price).of_type(:money)}
end
