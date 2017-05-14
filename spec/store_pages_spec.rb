require "spec_helper"

describe "adding a new store", {:type => :feature} do
  it "allows user to add a store to the database" do
    visit "/"
    click_link "Add Store"
    fill_in("store", with: "susha's shoes")
    click_button "Add Store"
    expect(page).to have_content "Susha's Shoes"
  end
end
