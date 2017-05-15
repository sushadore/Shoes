require "spec_helper"

describe "adding a new brand", :type => :feature do
  it "allows user to add a brand to the database" do
    visit "/"
    click_link "Add Brand"
    fill_in "brandname", with: "shea's sandals"
    fill_in "price", with: 20
    click_button "Add Brand"
    expect(page).to have_content "Shea's Sandals, $20.00"
  end
end

describe "requires valid brand input", :type => :feature do
  it "requires valid brand name input" do
    visit "/"
    click_link "Add Brand"
    fill_in "brandname", with: " "
    click_button "Add Brand"
    expect(page).to have_content "Input for Brandname can't be blank"
  end
end
