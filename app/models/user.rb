class User < ApplicationRecord
before_save { self.email = email.downcase }
validates :name, presence: true, length: { maximum: 50 }#pour valider si un nom n'est pas blank // pour voir si il y a un nombre de chacatères max
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i # le regex pour validé si c'est au format email 
 validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }#l'utilisateur doit être unique qu'imposte si MAJ ou pas

has_secure_password #impose le password et le password confirmation

validates :password,  presence: true, length: { minimum: 6 }

end
