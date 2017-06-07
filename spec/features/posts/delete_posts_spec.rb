feature 'Delete post' do

  before :each do
    @user = FactoryGirl.create(:user)
    @post = FactoryGirl.create(:post)
    signin(@user.email, @user.password)
    create_post(@post.title, @post.content)
  end

  scenario 'user can delete post' do
    delete_post(@post.id)
    expect(page).to have_content 'Post successfully deleted.'
  end

  scenario 'visitor can\'t delete post' do
    signout
    delete_post(@post.id)
    expect(page).to have_content 'You need to sign in or sign up before continuing.'
  end

end
