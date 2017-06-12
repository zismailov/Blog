feature 'Delete post' do

  before :each do
    @user = FactoryGirl.create(:user)
    @post = FactoryGirl.create(:post)
    signin(@user.email, @user.password)
    create_post(@post.title, @post.content)
  end

  scenario 'user can delete his own pos | user can\'t delete other\'s posts' do
    delete_post(@post.id)
    if @post.user != @user
      expect(page).to have_content 'You can\'t edit not your own posts.'
    else
      expect(page).to have_content 'Post successfully deleted.'
    end
  end

  scenario 'admin can delete any post' do
    signout
    @admin = FactoryGirl.create(:user, :admin)
    signin(@admin.email, @admin.password)
    delete_post(@post.id)
    expect(page).to have_content 'You need to sign in or sign up before continuing.'
  end

end
