class CreateLeads < ActiveRecord::Migration[6.0]
  def change
    create_table :leads do |t|
      t.string :first_name
      t.string :last_name
      t.string :street
      t.string :city
      t.string :state
      t.string :postal_code
      t.string :phone_number
      t.string :beneficiary_information
      t.date :date_of_birth
      t.boolean :referral_made?
      t.string :referral_from
      t.boolean :sale_made?
      t.boolean :lead_archived?
      t.decimal :latitude, precision: 10, scale: 6
      t.decimal :longitude, precision: 10, scale: 6

      t.timestamps
    end
  end
end
