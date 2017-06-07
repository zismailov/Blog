feature 'Create post' do

  scenario 'user can create post with valid data' do
    user = FactoryGirl.create(:user)
    post = FactoryGirl.create(:post)
    signin(user.email, user.password)
    create_post(post.title, post.content)
    expect(page).to have_content 'Post successfully created.'
  end

  scenario 'visitor can\'t create post' do
    visit new_post_path
    expect(page).to have_current_path new_user_session_path
    expect(page).to have_content 'You need to sign in or sign up before continuing.'
  end

end
