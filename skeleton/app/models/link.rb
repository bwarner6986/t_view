# == Schema Information
#
# Table name: links
#
#  id      :bigint           not null, primary key
#  title   :string           not null
#  url     :string           not null
#  user_id :integer          not null
#

class Link < ApplicationRecord
  validates :title, :url, presence: true
  has_many :comments
  belongs_to :user

end
