feature 'Create comment' do

  scenario 'user can create comment' do
    user = FactoryGirl.create(:user)
    post = FactoryGirl.create(:post)
    comment = FactoryGirl.create(:comment)
    signin(user.email, user.password)
    visit post_path(post)
    create_comment(comment.content)
    expect(page).to have_content 'Comment successfully created.'
  end

  scenario 'visitor can\'t create comment' do
    post = FactoryGirl.create(:post)
    comment = FactoryGirl.create(:comment)
    visit post_path(post)
    create_comment(comment.content)
    expect(page).to have_content 'Comment not created.'
  end

end
