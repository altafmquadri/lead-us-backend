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
      t.boolean :referral_made?, default: false
      t.string :referral_from
      t.boolean :sale_made?, default: false
      t.boolean :lead_archived?, default: false
      t.decimal :latitude, precision: 10, scale: 6, default: 0.0
      t.decimal :longitude, precision: 10, scale: 6, default: 0.0
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
