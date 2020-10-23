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
require 'test_helper'

class BookTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
