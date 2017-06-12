feature 'Delete comment' do

  before :each do
    @user = FactoryGirl.create(:user)
    @comment = FactoryGirl.create(:comment)
    signin(@user.email, @user.password)
    visit post_path(@comment.post)
    create_comment(@comment.content)
  end

  scenario 'user can delete his own comments' do
    visit post_path(@comment.post)
    create_comment(@comment.content)
    expect(page).to have_css('.glyphicon.glyphicon-remove')
  end

   scenario 'admin can delete any comment' do
    signout
    admin = FactoryGirl.create(:user, :admin)
    signin(admin.email, admin.password)
    visit post_path(@comment.post)
    expect(page).to have_css('.glyphicon.glyphicon-remove')
  end

  scenario 'visitor can\'t delete comments' do
    signout
    visit post_path(@comment.post)
    expect(page).to_not have_css('.glyphicon.glyphicon-remove')
  end

end
