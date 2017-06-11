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

end
