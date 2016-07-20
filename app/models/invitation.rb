class Invitation < ActiveRecord::Base
  validates :first_name, :email, :last_name, :phone, :presence => true
end
