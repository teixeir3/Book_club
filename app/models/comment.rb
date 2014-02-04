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

class Comment < ActiveRecord::Base
  attr_accessible :body, :parent_comment_id, :book_id,
    :genre_id, :user_id,
end
