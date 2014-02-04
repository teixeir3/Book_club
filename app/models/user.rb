# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  first_name      :string(255)
#  last_name       :string(255)
#  pseudonym       :string(255)
#  username        :string(255)      not null
#  password_digest :string(255)      not null
#  token           :string(255)      not null
#  admin           :boolean          default(FALSE), not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :pseudonym, :username,
    :password_digest, :token
end
