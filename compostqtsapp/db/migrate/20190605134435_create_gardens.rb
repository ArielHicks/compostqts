class CreateGardens < ActiveRecord::Migration[5.2]
  def change
    create_table :gardens do |t|
      t.string :name
      t.integer :membership_years
      t.integer :heat_rating
      t.integer :happiness_rating
      t.integer :min_strength

      t.timestamps
    end
  end
end
