require "spec_helper"

describe "adding a new store", :type => :feature do
  it "allows user to add a store to the database" do
    visit "/"
    click_link "Add Store"
    fill_in "store", with: "susha's shoes"
    click_button "Add Store"
    expect(page).to have_content "Susha's Shoes"
  end
end

describe "updating a store name", :type => :feature do
  it "allows user to update store name" do
    visit "/"
    click_link "Add Store"
    fill_in "store", with: "susha's shoes"
    click_button "Add Store"
    click_link "Susha's Shoes"
    fill_in "store", with: "Sushalou's"
    click_button "Update"
    expect(page).to have_content "Sushalou's"
  end
end

describe "adding a brand to a store", :type => :feature do
  it "allows user to add brands to a store" do
    visit "/"
    click_link "Add Store"
    fill_in "store", with: "susha's shoes"
    click_button "Add Store"
    click_link "Add Brand"
    fill_in "brandname", with: "solid sandals"
    click_button "Add Brand"
    expect(page).to have_content "Solid Sandals"
    click_link "Susha's Shoes"
    check "Solid Sandals"
    expect(page).to have_content "Solid Sandals"
  end
end
