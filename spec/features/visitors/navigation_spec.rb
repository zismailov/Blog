# Feature: Navigation links
#   As a visitor
#   I want to see navigation links
#   So I can find home, sign in, or sign up
feature 'Navigation links', :devise do

  # Scenario: View navigation links
  #   Given I am a visitor
  #   When I visit the home page
  #   Then I see "home," "sign in"
  scenario 'view navigation links visitor' do
    visit root_path
    expect(page).to have_content 'Home'
    expect(page).to have_content 'Sign in'
  end

  # Scenario View navigation links
  #   Given I am a user
  #   When I visit the home page
  #   Then I see "home," "sign out"
  scenario 'view navigation links as user' do
    user = FactoryGirl.create(:user)
    signin(user.email, user.password)
    expect(page).to have_content 'Home'
    expect(page).to have_content 'Sign out'
  end

end
