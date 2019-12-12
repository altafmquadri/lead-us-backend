class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.references :lead, null: false, foreign_key: true
      t.string :title
      t.date :date
      t.datetime :start_time
      t.datetime :end_time
      t.boolean :presentation_made?, default: false
      t.boolean :made_sale?, default: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
