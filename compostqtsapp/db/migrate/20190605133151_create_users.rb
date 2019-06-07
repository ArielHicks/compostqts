class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :password_digest
      t.integer :heatstroke
      t.integer :happiness
      t.integer :membership_years
      t.integer :strength_level

      t.timestamps
    end
  end
end
