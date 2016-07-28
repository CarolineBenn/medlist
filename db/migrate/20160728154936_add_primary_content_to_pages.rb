class AddPrimaryContentToPages < ActiveRecord::Migration
  def change
    add_column :pages, :primary_content,   :text
    add_column :pages, :secondary_content, :text
  end
end
