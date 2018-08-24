class AddIsMainToProjects < ActiveRecord::Migration
  def change
  	add_column :projects, :is_main, :boolean, default: false
  end
end
