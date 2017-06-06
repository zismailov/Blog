module Features
  module PostHelpers
    def create_post(title, content)
      visit new_post_path
      fill_in 'Title', with: title
      fill_in 'Content', with: content, match: :prefer_exact
      click_button 'Create post'
    end
  end
end
