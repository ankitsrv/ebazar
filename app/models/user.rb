class User < ApplicationRecord
  has_secure_password

  validates_uniqueness_of :email, presence: true

  def name
    self.firstname + ' ' + self.lastname
  end
end
