class User < ActiveRecord::Base
  attr_accessible :bio, :email, :full_name, :location, :password
  
  validates_presence_of :email, :full_name, :location, :password
  validates_confirmation_of :password
  validates_length_of :bio, :minimum => 30, :allow_blank => false
  validates_format_of :email, :width => /\A[ˆ@]+@([ˆ@\.]+\.)+[ˆ@\.]+\z/
  validates_uniqueness_of :email
end
