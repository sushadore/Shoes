require "spec_helper"

describe "adding a new brand", :type => :feature do
  it "allows user to add a brand to the database" do
    visit "/"
    click_link "Add Brand"
    fill_in "brandname", with: "shea's sandals"
    click_button "Add Brand"
    expect(page).to have_content "Shea's Sandals"
  end
end
