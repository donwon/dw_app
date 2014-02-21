require 'spec_helper'

feature "Homepage" do
  scenario "User sees the 2% Realty Tag lines and logo" do
    visit "/"
    expect(page).to have_text("Welcome")
  end

end