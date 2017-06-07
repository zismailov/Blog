require 'support/helpers/session_helpers'
require 'support/helpers/post_helpers'
require 'support/helpers/comment_helpers'

RSpec.configure do |config|
  config.include Features::SessionHelpers, type: :feature
  config.include Features::PostHelpers, type: :feature
  config.include Features::CommentHelpers, type: :feature
end
