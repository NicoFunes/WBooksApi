class User < ApplicationRecord
  validates_presence_of :first_name, :email
  has_many :rents
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :database_authenticatable,
         :jwt_authenticatable,
         jwt_revocation_strategy: JWTBlacklist
end
