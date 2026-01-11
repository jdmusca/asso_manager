class Utilisateur < ApplicationRecord
  has_secure_password

  validates :email, presence: true, uniqueness: true
  validates :nom, :prenom, presence: true
end
