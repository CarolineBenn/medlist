class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :title
      t.text :primary_content
      t.text :secondary_content

      t.timestamps null: false
    end
  end
end
