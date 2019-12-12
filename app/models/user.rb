class User < ApplicationRecord
    has_many :leads
    has_many :calls
    has_many :appointments
    has_many :sales
end
