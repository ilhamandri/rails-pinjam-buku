# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  username   :string
#  password   :string
#  name       :string
#  address    :string
#  handphone  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class User < ApplicationRecord

  has_many :rentals
  has_many :books, through: :rentals


	validates :username, presence: true, length: {minimum: 5}
	validates :password, :name, :address, :handphone, presence: true
end
