require 'rails_helper'

feature 'User marks todo incomplete' do
  scenario 'successfully' do
    sign_in

    create_todo('Buy bread')
    click_on 'Mark complete'
    click_on 'Mark incomplete'

    expect(page).not_to display_completed_todo('Buy bread')
    expect(page).to display_todo('Buy bread')
  end
end
