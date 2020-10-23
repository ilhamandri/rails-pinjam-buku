# == Schema Information
#
# Table name: books
#
#  id         :integer          not null, primary key
#  title      :string
#  total_page :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  author_id  :integer
#
class Book < ApplicationRecord

  belongs_to :author
  has_many :rentals
  has_many :users, through: :rentals

  validates :title, presence: true, length: {minimum: 5}
  validates :total_page, presence: true, numericality: {greater_than_or_equal_to: 50}
end
