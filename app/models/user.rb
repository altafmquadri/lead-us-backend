class User < ApplicationRecord
    has_many :leads
    has_many :calls, through: :leads
    has_many :appointments, through: :leads
    has_many :sales, through: :leads
end
