class User < ApplicationRecord
    has_many :leads
    has_many :leads, through: :sales
    has_many :leads, through: :appointments
    has_many :leads, through: :calls
end
