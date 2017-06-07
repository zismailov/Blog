feature 'Delete post' do

  scenario 'user can delete post' do
    user = FactoryGirl.create(:user)
    post = FactoryGirl.create(:post)
    signin(user.email, user.password)
    create_post(post.title, post.content)
    delete_post(post.id)
    expect(page).to have_content 'Post successfully deleted.'
  end

end
