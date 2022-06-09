class CreateCharacters < ActiveRecord::Migration[5.2]
  def change
    create_table :characters do |t|
      t.column :war_name, :string
      t.column :war_race, :string
      t.column :war_class, :string
      t.column :war_cost, :integer
      t.column :war_strength, :integer

      t.timestamps
    end
  end
end
