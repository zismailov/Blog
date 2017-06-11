feature 'Create categories' do

  scenario 'user can\'t create categories' do
    visit admin_categories_path
    expect(page).to have_content 'Forbidden'
  end

  scenario 'admin can create categories' do
    admin = FactoryGirl.create(:user, :admin)
    signin(admin.email, admin.password)
    visit admin_categories_path
    fill_in 'Name', with: 'Test category name'
    click_button 'Create category'
    expect(page).to have_content 'Category successfully created.'
  end

end
