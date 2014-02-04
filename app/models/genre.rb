# == Schema Information
#
# Table name: genres
#
#  id          :integer          not null, primary key
#  name        :string(255)      not null
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Genre < ActiveRecord::Base
  attr_accessible :name, :description
end
