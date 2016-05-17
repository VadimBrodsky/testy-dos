require "rails_helper"

feature 'User completes todo' do
  scenario 'successfully' do
    sign_in

    click_on 'Add a new todo'
    fill_in 'Title', with: 'Buy bread'
    click_on 'Submit'

    click_on 'Mark complete'

    expect(page).to have_css '.todos li.completed', text: 'Buy bread'
  end
end
