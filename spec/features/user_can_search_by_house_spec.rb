require 'rails_helper'

feature "User can search for Order of the Phoenix members by House" do
  scenario "User submits valid house name" do

    visit '/'

    select 'Gryffindor', from: :house

    click_on 'Search For Members'

    expect(current_path).to eq(search_path)

    expect(page).to have_content("21 Results")

    within(first(".members")) do
      expect(page).to have_css(".name")
      expect(page).to have_css(".role")
      expect(page).to have_css(".house")
      expect(page).to have_css(".patronus")
    end
  end
end
