class StudentGroup < ActiveRecord::Base
  has_many :student_group_users,:dependent => :destroy
end
