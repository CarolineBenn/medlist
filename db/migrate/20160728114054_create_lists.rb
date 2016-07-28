class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string  :section
      t.string  :list_name
      t.integer :total
      t.integer :africa
      t.integer :asia
      t.integer :aus_nz
      t.integer :eastern_europe
      t.integer :middle_east
      t.integer :south_america
      t.integer :usa_can
      t.integer :united_kingdom
      t.integer :western_europe

      t.timestamps null: false
    end
  end
end
