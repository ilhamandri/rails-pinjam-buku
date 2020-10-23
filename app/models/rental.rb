# == Schema Information
#
# Table name: rentals
#
#  id         :integer          not null, primary key
#  day        :integer
#  user_id    :integer
#  book_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Rental < ApplicationRecord

  belongs_to :book
  belongs_to :user

  validates :day, presence: true, numericality: {greater_than_or_equal_to: 3, less_than_or_equal_to: 30}
end
