feature 'Create categories' do

  scenario 'user can\'t create categories' do
    user = FactoryGirl.create(:user)
    signin(user.email, user.password)
    visit admin_categories_path
    expect(page).to have_content 'Forbidden'
  end

  scenario 'visitor can\'t create categories' do
    visit admin_categories_path
    expect(page).to have_content 'Forbidden'
  end

  scenario 'admin can create categories' do
    admin = FactoryGirl.create(:user, :admin)
    signin(admin.email, admin.password)
    visit admin_categories_path
    fill_in 'Name', with: Faker::Name.title
    click_button 'Create category'
    expect(page).to have_content 'Category successfully created.'
  end

end
