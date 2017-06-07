module Features
  module CommentHelpers

    def create_comment(post_id, content)
      visit post_path(post_id)
      fill_in 'Content', with: content, match: :prefer_exact
      click_button 'Create comment'
    end

    def delete_comment(post_id)
      visit post_path(post_id)
      click_link 'comment-delete'
    end

  end
end
