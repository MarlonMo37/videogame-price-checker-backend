class User < ApplicationRecord
    has_many :lists
    has_many :consoles

    validates :username, presence: true, uniqueness: true
    validates :email, presence: true, uniqueness: true, email: true
    has_secure_password

end
