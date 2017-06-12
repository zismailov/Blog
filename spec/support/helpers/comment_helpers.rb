module Features
  module CommentHelpers

    def create_comment(content)
      fill_in 'Content', with: content
      click_button 'Create comment'
    end

    def delete_comment(post, comment)
      click_link post_comment_path(post, comment)
    end

  end
end
