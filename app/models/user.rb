class User < ApplicationRecord
    has_many :leads
    has_many :sales
    has_many :calls
    has_many :appointments
    has_many :leads, through: :sales
    has_many :leads, through: :appointments
    has_many :leads, through: :calls
end
