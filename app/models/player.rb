class Player < ActiveRecord::Base
  validates :nickname, :email, :color, :money, :presence => true
  validates_uniqueness_of :email, :nickname
end
