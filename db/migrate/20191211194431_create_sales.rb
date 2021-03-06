class CreateSales < ActiveRecord::Migration[6.0]
  def change
    create_table :sales do |t|
      t.references :lead, null: false, foreign_key: true
      t.float :annualized_life_premium, default: 0.0
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
