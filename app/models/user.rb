class User < ApplicationRecord
    has_many :leads
    has_many :calls, through: :leads
    has_many :appointments, through: :leads
    has_many :sales, through: :leads


    # has_many :leads
    # has_many :sales
    # has_many :leads_sales, through: :sales, source: :lead
    # has_many :calls
    # has_many :leads, through: :calls
    # has_many :appointments
    # has_many :leads, through: :appointments

    
end
