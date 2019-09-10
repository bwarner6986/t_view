# == Schema Information
#
# Table name: comments
#
#  id      :bigint           not null, primary key
#  body    :text             not null
#  user_id :integer          not null
#  link_id :integer          not null
#

class Comment < ApplicationRecord
  validates :body, presence: true

  belongs_to :user
  belongs_to :link

end
