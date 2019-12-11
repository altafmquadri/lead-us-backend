class CreateCalls < ActiveRecord::Migration[6.0]
  def change
    create_table :calls do |t|
      t.references :user, null: false, foreign_key: true
      t.references :lead, null: false, foreign_key: true
      t.string :call_status
      t.boolean :appointment_made?
      t.boolean :archive_lead?

      t.timestamps
    end
  end
end
