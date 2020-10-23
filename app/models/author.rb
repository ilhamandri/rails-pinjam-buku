# == Schema Information
#
# Table name: authors
#
#  id         :integer          not null, primary key
#  name       :string
#  age        :integer
#  address    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Author < ApplicationRecord

  has_one :book

  validates :name, presence: true, length: {minimum: 5}
  validates :age, presence: true, numericality: {great_than_or_equal_to: 17}
  validates :address, presence: true, length: {minimum: 5}
end
