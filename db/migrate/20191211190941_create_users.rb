class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :company_name
      t.decimal :latitude, precision: 10, scale: 6, default: 0.0
      t.decimal :longitude, precision: 10, scale: 6, default: 0.0

      t.timestamps
    end
  end
end
