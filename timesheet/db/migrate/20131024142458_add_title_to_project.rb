class AddTitleToProject < ActiveRecord::Migration
  def change
    add_column :projects, :title, :string
  end
end
