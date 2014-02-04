# == Schema Information
#
# Table name: comments
#
#  id                :integer          not null, primary key
#  parent_comment_id :integer
#  book_id           :integer          default(0), not null
#  genre_id          :integer          default(0), not null
#  user_id           :integer          not null
#  body              :text             not null
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
