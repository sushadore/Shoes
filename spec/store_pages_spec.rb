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
    expect(page).to have_content "Susha's Shoes"
    click_link "Susha's Shoes"
    fill_in "store", with: "Sushalou's"
    click_button "Edit"
    expect(page).to have_content "Sushalou's"
  end
end

describe "deleting a store", :type => :feature do
  it "allows user to delete a store" do
    visit "/"
    click_link "Add Store"
    fill_in "store", with: "susha's shoes"
    click_button "Add Store"
    expect(page).to have_content "Susha's Shoes"
    click_link "Susha's Shoes"
    expect(page).to have_content "Susha's Shoes"
    click_button "Delete Store"
    expect(page).to have_content " "
  end
end
