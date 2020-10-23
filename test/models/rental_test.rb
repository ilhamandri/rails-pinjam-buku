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
require 'test_helper'

class RentalTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
