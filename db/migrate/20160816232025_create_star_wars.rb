class CreateStarWars < ActiveRecord::Migration
  def change
    create_table :star_wars do |t|
      t.string :character
      t.string :planet
      t.string :quote
      t.string :droid
      t.string :vehicle

      t.timestamps null: false
    end
  end
end
