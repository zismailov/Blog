feature 'Delete comment' do

  before :each do
    @user = FactoryGirl.create(:user)
    @post = FactoryGirl.create(:post)
    @comment = FactoryGirl.create(:comment)
    signin(@user.email, @user.password)
    create_post(@post.title, @post.content)
    create_comment(@post.id, @comment.content)
  end

  scenario 'user can delete comment' do
    delete_comment(@post.id)
    expect(page).to have_content 'Comment successfully deleted.'
  end

  scenario 'visitor can\'t delete comment' do
    signout
    delete_comment(@post.id)
    expect(page).to have_content 'You need to sign in or sign up before continuing.'
  end

end
