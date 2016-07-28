class ChangeIntegerLimitInLists < ActiveRecord::Migration
  def change
    change_column :lists, :africa,         :integer, limit: 8
    change_column :lists, :asia,           :integer, limit: 8
    change_column :lists, :aus_nz,         :integer, limit: 8
    change_column :lists, :eastern_europe, :integer, limit: 8
    change_column :lists, :middle_east,    :integer, limit: 8
    change_column :lists, :south_america,  :integer, limit: 8
    change_column :lists, :usa_can,        :integer, limit: 8
    change_column :lists, :united_kingdom, :integer, limit: 8
    change_column :lists, :western_europe, :integer, limit: 8
  end
end
