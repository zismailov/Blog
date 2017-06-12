feature 'Delete categories' do

  scenario 'admin can delete categories' do
    admin = FactoryGirl.create(:user, :admin)
    signin(admin.email, admin.password)
    visit admin_categories_path
    fill_in 'Name', with: 'About home'
    click_button 'Create category'

    click_link ''
    expect(page).to have_content 'Category successfully deleted.'
  end

  scenario 'user can\'t delete categories' do
    user = FactoryGirl.create(:user)
    signin(user.email, user.password)
    visit admin_categories_path
    expect(page).to have_content 'Forbidden'
  end

  scenario 'visitor can\'t delete categories' do
    visit admin_categories_path
    expect(page).to have_content 'Forbidden'
  end

end
