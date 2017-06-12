feature 'Delete post' do

  before :each do
    @user = FactoryGirl.create(:user)
    @post = FactoryGirl.create(:post)
    signin(@user.email, @user.password)
    create_post(@post.title, @post.content)
  end

  scenario 'user can delete his own pos | user can\'t delete other\'s posts' do
    visit post_path(@post)
    if @post.user != @user
      expect(page).to_not have_content 'Delete post'
    else
      expect(page).to have_content 'Delete post'
    end
  end

  scenario 'admin can delete any post' do
    signout
    @admin = FactoryGirl.create(:user, :admin)
    signin(@admin.email, @admin.password)
    delete_post(@post)
    expect(page).to have_content 'Post successfully deleted.'
  end

  scenario 'visitor can\'t delete post' do
    signout
    visit post_path(@post)
    expect(page).to_not have_content 'Delete post'
  end

end
