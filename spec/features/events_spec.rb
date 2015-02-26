require 'rails_helper'


feature 'Events' do

  scenario 'User creates an event' do
    visit root_path
    click_on 'New Event'
    fill_in 'Name', with: 'Event'
    fill_in 'Description', with: 'Event description'
    fill_in 'Location', with: 'San Fran'
    fill_in 'Capacity', with: 100
    fill_in 'Requires ID', with: true
    click_on 'Create Event'

    expect(page).to have_content ('New Event')
    expect(page).to have_content ('Event description')
    expect(page).to have_content ('San Fran')
    expect(page).to have_content (100)
    expect(page).to have_content (true)
  end
end
