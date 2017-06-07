feature 'Create comment' do

  scenario 'user can create comment' do
    user = FactoryGirl.create(:user)
    post = FactoryGirl.create(:post)
    comment = FactoryGirl.create(:comment)
    signin(user.email, user.password)
    create_post(post.title, post.content)
    create_comment(post.id, comment.content)
    expect(page).to have_content 'Comment successfully created.'
  end

  scenario 'visitor can\'t create comment' do
    post = FactoryGirl.create(:post)
    comment = FactoryGirl.create(:comment)
    create_comment(post.id, comment.content)
    expect(page).to have_content 'Comment not created.'
  end

end
