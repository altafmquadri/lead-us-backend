class User < ApplicationRecord
    has_secure_password
    
    has_many :leads
    has_many :calls
    has_many :appointments
    has_many :sales

    validates :username, uniqueness: true


end
