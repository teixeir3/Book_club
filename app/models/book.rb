# == Schema Information
#
# Table name: books
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Book < ActiveRecord::Base
  # attr_accessible :title, :body
end
