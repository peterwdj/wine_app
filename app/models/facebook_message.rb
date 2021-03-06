# == Schema Information
#
# Table name: facebook_messages
#
#  id            :bigint(8)        not null, primary key
#  name          :text
#  category      :integer
#  body          :text
#  quick_replies :jsonb
#  buttons       :jsonb
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class FacebookMessage < ApplicationRecord
  validates :name, presence: true
  validates :category, presence: true
  validates :body, presence: true

  enum category: [:fallback]
end
