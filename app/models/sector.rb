class Sector < ActiveRecord::Base
  has_many :companies,:dependent => :destroy
end
