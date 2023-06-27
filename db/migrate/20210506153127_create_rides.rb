class CreateRides < ActiveRecord::Migration[6.1]
  def change
    create_table :rides do |t|
      t.references :taxi, foreign_key: true
      t.references :passenger, foreign_key: true
      t.timestamps
    end
  end
end
