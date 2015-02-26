require 'rails_helper'

feature 'Events' do

  scenario 'User creates new Event' do

    visit root_path
    click_on 'New Event'
    fill_in 'Event name', with: 'event name'
    fill_in 'Description', with: 'event description'
    fill_in 'Date', with: '2015-03-05'
    click_on 'Create Event'

    expect(page).to have_content('event name')
    expect(page).to have_content('event description')
    expect(page).to have_content('2015-03-05')

  end


end
